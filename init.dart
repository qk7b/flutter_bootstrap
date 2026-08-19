import 'dart:io';
import 'dart:math';

String _generateRandomPassword({int length = 20}) {
  final random = Random.secure();
  final List<int> charCodes = [];
  const String chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#%^&*()';

  for (int i = 0; i < length; i++) {
    charCodes.add(chars.codeUnitAt(random.nextInt(chars.length)));
  }
  return String.fromCharCodes(charCodes);
}

void main(List<String> args) {
  stdout.writeln('Hello there !\nLet\'s set this project up for you!');
  stdout.writeln(
    'First of all, what is package name of your project (dart style) ?',
  );
  final flutterPackage = askProjectName();
  stdout.writeln('Now what is your identifier (like com.toto.app) ?');
  final appIdentifier = askPackageName();
  stdout.writeln(
    'Your project and package name are $flutterPackage and $appIdentifier',
  );

  // Replace name in pubspec.yaml
  final pubspec = File('pubspec.yaml');
  pubspec.writeAsStringSync(
    pubspec.readAsStringSync().replaceAll(
      'name: flutter_bootstrap_app',
      'name: $flutterPackage',
    ),
  );

  // Replace name in AndroidManifest.xml
  final androidManifest = File('android/app/src/main/AndroidManifest.xml');
  androidManifest.writeAsStringSync(
    androidManifest.readAsStringSync().replaceAll(
      'android:label="flutter_bootstrap_app"',
      'android:label="$flutterPackage"',
    ),
  );
  // Replace applicationId in android/app/build.gradle
  final buildGradle = File('android/app/build.gradle');
  buildGradle.writeAsStringSync(
    buildGradle.readAsStringSync().replaceAll(
      'applicationId "com.example.flutter_bootstrap_app"',
      'applicationId "$appIdentifier"',
    ),
  );

  stdout.writeln(
    'Would you like to generate an Android upload key for release builds? (y/n)',
  );
  final generateKeystore = stdin.readLineSync();
  if (generateKeystore == 'y') {
    final storePassword = _generateRandomPassword();
    final keyPassword = _generateRandomPassword();
    final keyAlias = appIdentifier;
    final storeFile = 'android/app/upload-keystore.jks';

    stdout.writeln('Please provide details for the certificate:');
    final country = askString('Country Code (C, e.g., US):');
    final state = askString('State or Province (S, e.g., California):');
    final locality = askString('Locality (L, e.g., Mountain View):');
    final organization = askString('Organization (O, e.g., Google Inc.):');
    final organizationUnit = askString('Organizational Unit (OU, e.g., Android):');
    final commonName = askString('Common Name (CN, e.g., Android Debug):');

    stdout.writeln('Generating keystore...');
    Process.runSync(
      'keytool',
      [
        '-genkey',
        '-v',
        '-keystore',
        storeFile,
        '-alias',
        keyAlias,
        '-keyalg',
        'RSA',
        '-keysize',
        '2048',
        '-validity',
        '10000',
        '-storepass',
        storePassword,
        '-keypass',
        keyPassword,
        '-dname',
        'CN=$commonName, OU=$organizationUnit, O=$organization, L=$locality, S=$state, C=$country',
      ],
    );
    stdout.writeln('Keystore generated at $storeFile');

    // Create key.properties file
    final keyPropertiesContent =
        '''
  storePassword=$storePassword
  keyPassword=$keyPassword
  keyAlias=$keyAlias
  storeFile=upload-keystore.jks
  ''';
    File('android/key.properties').writeAsStringSync(keyPropertiesContent);
    stdout.writeln('android/key.properties created.');
    // Update android/app/build.gradle
    String buildGradleContent = buildGradle.readAsStringSync();

    // Add keystore properties loading to the top of build.gradle
    const propertiesLoadingBlock = """
def keystoreProperties = new Properties()
def keystorePropertiesFile = rootProject.file('key.properties')
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
}
""";
    buildGradleContent = buildGradleContent.replaceAll('plugins {', 'plugins {\n$propertiesLoadingBlock\n');

    const signingConfigBlock = """
        signingConfigs {
            release {
                storeFile rootProject.file(keystoreProperties['storeFile'])
                storePassword keystoreProperties['storePassword']
                keyAlias keystoreProperties['keyAlias']
                keyPassword keystoreProperties['keyPassword']
            }
        }
    """;
    buildGradleContent = buildGradleContent.replaceAll('android {', 'android {\n$signingConfigBlock');
    buildGradleContent = buildGradleContent.replaceAll(
      'signingConfig signingConfigs.debug',
      '''            signingConfig signingConfigs.release''',
    );

    buildGradle.writeAsStringSync(buildGradleContent);
    stdout.writeln(
      'android/app/build.gradle updated with release signing config.',
    );

    // Update android/.gitignore
    final androidGitignore = File('android/.gitignore');
    androidGitignore.writeAsStringSync(
      '${androidGitignore.readAsStringSync()}\n# Android Keystore files\nkey.properties\nupload-keystore.jks',
      mode: FileMode.append,
    );
    stdout.writeln('android/.gitignore updated.');
  }

  // For ios we need a correct bundle identifier with no _
  // First we uppercase each letter after a _ if they exist
  String iosBundle = '';
  int len = appIdentifier.length;
  for (int lI = 0; lI < len; lI++) {
    if (appIdentifier[lI] == '_') {
      if (lI + 1 < len) {
        iosBundle += appIdentifier[lI + 1].toUpperCase();
        lI++;
      }
    } else {
      iosBundle += appIdentifier[lI];
    }
  }

  // Now replace it in ios/Runner.xcodeproj
  final xcodeproj = File('ios/Runner.xcodeproj/project.pbxproj');
  xcodeproj.writeAsStringSync(
    xcodeproj.readAsStringSync().replaceAll(
      'com.example.flutterBootstrapApp',
      iosBundle,
    ),
  );
  // And in info.plist
  final infoPlist = File('ios/Runner/Info.plist');
  infoPlist.writeAsStringSync(
    infoPlist.readAsStringSync().replaceAll(
      'com.example.flutterBootstrapApp',
      iosBundle,
    ),
  );

  // Replace name in all dart files
  final files = Directory('./lib')
      .listSync(recursive: true)
      .whereType<File>()
      .where((file) => file.path.endsWith('.dart'));
  for (final file in files) {
    file.writeAsStringSync(
      file.readAsStringSync().replaceAll(
        'flutter_bootstrap_app',
        flutterPackage,
      ),
    );
  }

  // And in .vscode/launch.json
  final launchJson = File('.vscode/launch.json');
  launchJson.writeAsStringSync(
    launchJson.readAsStringSync().replaceAll(
      'flutter_bootstrap_app',
      flutterPackage,
    ),
  );

  // And in assets/i18n/*.json
  final i18n = Directory('./assets/i18n')
      .listSync(recursive: true)
      .whereType<File>()
      .where((file) => file.path.endsWith('.json'));
  for (final file in i18n) {
    file.writeAsStringSync(
      file.readAsStringSync().replaceAll('Flutter Bootstrap', flutterPackage),
    );
  }

  stdout.writeln('All set !');
  stdout.writeln('Would you like to run pub get? (y/n)');
  final answer = stdin.readLineSync();
  if (answer == 'y') {
    Process.runSync('dart', ['pub', 'get']);
  }

  stdout.writeln('Would you like to run pub run build_runner build? (y/n)');
  final answer2 = stdin.readLineSync();
  if (answer2 == 'y') {
    Process.runSync('dart', ['pub', 'run', 'build_runner', 'build']);
  }

  final gitignore = File('.gitignore');
  gitignore.writeAsStringSync(
    gitignore
        .readAsStringSync()
        .replaceAll('firebase.json', '')
        .replaceAll('ios/Runner/GoogleService-Info.plist', '')
        .replaceAll('android/app/google-services.json', '')
        .replaceAll('lib/firebase_options.dart', ''),
  );

  stdout.writeln('Bye !');
}

String askProjectName() {
  final regex = RegExp(r'^[a-z0-9_]*$');
  final projectName = stdin.readLineSync();
  if (projectName == null ||
      projectName.isEmpty ||
      !regex.hasMatch(projectName)) {
    stdout.writeln(
      'Project name invalid. Please try again (https://dart.dev/tools/linter-rules/package_names).',
    );
    return askProjectName();
  }
  stdout.writeln('Your project name is $projectName, ok (y/n) ?');
  final answer = stdin.readLineSync();
  if (answer == 'y') {
    return projectName;
  }
  // Message
  stdout.writeln(
    'Project name invalid. Please try again (https://dart.dev/tools/linter-rules/package_names).',
  );
  return askProjectName();
}

String askPackageName() {
  final regex = RegExp(r'^([A-Za-z]{1}[A-Za-z\d_]*\.)+[A-Za-z][A-Za-z\d_]*$');
  final packageName = stdin.readLineSync();
  if (packageName == null ||
      packageName.isEmpty ||
      !regex.hasMatch(packageName)) {
    stdout.writeln('Package name invalid. Please try again.');
    return askPackageName();
  }
  stdout.writeln('Your package name is $packageName, ok (y/n) ?');
  final answer = stdin.readLineSync();
  if (answer == 'y') {
    return packageName;
  }
  // Message
  stdout.writeln('Package name invalid. Please try again.');
  return askPackageName();
}

String askString(String prompt) {
  stdout.writeln(prompt);
  final value = stdin.readLineSync();
  if (value == null || value.isEmpty) {
    stdout.writeln('Input cannot be empty. Please try again.');
    return askString(prompt);
  }
  stdout.writeln('You entered "$value", ok (y/n) ?');
  final answer = stdin.readLineSync();
  if (answer == 'y') {
    return value;
  }
  stdout.writeln('Invalid input. Please try again.');
  return askString(prompt);
}

