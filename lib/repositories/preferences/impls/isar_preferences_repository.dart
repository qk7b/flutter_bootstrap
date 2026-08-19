import 'package:flutter_bootstrap_app/repositories/preferences/preferences.repository.dart';
import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';

part 'isar_preferences_repository.g.dart';

@LazySingleton(as: PreferencesRepository)
class IsarPreferencesRepository implements PreferencesRepository {
  IsarPreferencesRepository({required this.isar})
    : preferencesCollection = isar.collection<IsarPreferences>();

  final Isar isar;
  final IsarCollection<IsarPreferences> preferencesCollection;

  @override
  Future<void> clearLocalData() {
    return isar.writeTxn(() async {
      final preferences = await preferencesCollection.where().findAll();
      await preferencesCollection.deleteAll(
        preferences.map((p) => p.id).toList(),
      );
    });
  }
}

@collection
@Name('Preferences')
class IsarPreferences {
  Id id = Isar.autoIncrement;

  late bool isTrackingDisabled;
}
