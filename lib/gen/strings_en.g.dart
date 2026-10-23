///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<AppLocale, Translations> _meta;
	@override TranslationMetadata<AppLocale, Translations> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'Flutter Bootstrap'
	String get appName => 'Flutter Bootstrap';

	late final Translations$common$en common = Translations$common$en._(_root);
	late final Translations$onboarding$en onboarding = Translations$onboarding$en._(_root);
	late final Translations$tos$en tos = Translations$tos$en._(_root);
	late final Translations$login$en login = Translations$login$en._(_root);
	late final Translations$subscriptions$en subscriptions = Translations$subscriptions$en._(_root);
	late final Translations$settings$en settings = Translations$settings$en._(_root);
}

// Path: common
class Translations$common$en {
	Translations$common$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Loading...'
	String get loading => 'Loading...';

	/// en: 'An error occurred'
	String get error => 'An error occurred';

	/// en: 'Retry'
	String get retry => 'Retry';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Continue'
	String get continueLabel => 'Continue';
}

// Path: onboarding
class Translations$onboarding$en {
	Translations$onboarding$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Step ${context} of ${total}'
	String step({required Object context, required Object total}) => 'Step ${context} of ${total}';

	late final Translations$onboarding$step1$en step1 = Translations$onboarding$step1$en._(_root);
}

// Path: tos
class Translations$tos$en {
	Translations$tos$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final Translations$tos$intro$en intro = Translations$tos$intro$en._(_root);

	/// en: 'Terms and Conditions'
	String get tos => 'Terms and Conditions';

	/// en: 'and our'
	String get also => 'and our';

	/// en: 'Privacy Policy'
	String get privacy => 'Privacy Policy';
}

// Path: login
class Translations$login$en {
	Translations$login$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Login'
	String get loginTitle => 'Login';

	/// en: 'Log in to continue'
	String get loginSubtitle => 'Log in to continue';

	/// en: 'Login'
	String get login => 'Login';

	late final Translations$login$socials$en socials = Translations$login$socials$en._(_root);

	/// en: 'Continue without account'
	String get anonymous => 'Continue without account';

	/// en: 'By continuing, you agree to our '
	String get termsAgreement => 'By continuing, you agree to our ';
}

// Path: subscriptions
class Translations$subscriptions$en {
	Translations$subscriptions$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final Translations$subscriptions$duration$en duration = Translations$subscriptions$duration$en._(_root);
	late final Translations$subscriptions$periodunit$en periodunit = Translations$subscriptions$periodunit$en._(_root);

	/// en: '(zero) {Start with ${time} ${period} for free} (other) {Start with ${time} ${period} for ${n}}'
	String intro({required num n, required Object time, required Object period}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		zero: 'Start with ${time} ${period} for free',
		other: 'Start with ${time} ${period} for ${n}',
	);

	late final Translations$subscriptions$cancelation$en cancelation = Translations$subscriptions$cancelation$en._(_root);
}

// Path: settings
class Translations$settings$en {
	Translations$settings$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Account'
	String get account => 'Account';

	/// en: 'Preferences'
	String get preferences => 'Preferences';

	/// en: 'Support'
	String get support => 'Support';

	/// en: 'Debug'
	String get debug => 'Debug';

	/// en: 'Restore purchases'
	String get restorePurchases => 'Restore purchases';

	/// en: 'Contact us'
	String get contactUs => 'Contact us';

	/// en: 'Terms of Service'
	String get termsOfService => 'Terms of Service';

	/// en: 'Privacy Policy'
	String get privacyPolicy => 'Privacy Policy';

	/// en: 'Licenses'
	String get licenses => 'Licenses';

	/// en: 'Onboarding'
	String get onboarding => 'Onboarding';

	/// en: 'Restore purchase successful!'
	String get restorePurchaseSuccess => 'Restore purchase successful!';

	late final Translations$settings$theme$en theme = Translations$settings$theme$en._(_root);
	late final Translations$settings$premium$en premium = Translations$settings$premium$en._(_root);
	late final Translations$settings$deleteMyAccount$en deleteMyAccount = Translations$settings$deleteMyAccount$en._(_root);
	late final Translations$settings$analytics$en analytics = Translations$settings$analytics$en._(_root);
}

// Path: onboarding.step1
class Translations$onboarding$step1$en {
	Translations$onboarding$step1$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Welcome to Flutter Bootstrap'
	String get title => 'Welcome to Flutter Bootstrap';

	/// en: 'The ultimate Flutter starter app'
	String get subtitle => 'The ultimate Flutter starter app';

	/// en: 'This app is designed to help you get started quickly with Flutter.'
	String get tooltip => 'This app is designed to help you get started quickly with Flutter.';

	/// en: 'Continue'
	String get continueButton => 'Continue';
}

// Path: tos.intro
class Translations$tos$intro$en {
	Translations$tos$intro$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'By using this app, you agree to our'
	String get using => 'By using this app, you agree to our';

	/// en: 'By subscribing to this app, you agree to our'
	String get buying => 'By subscribing to this app, you agree to our';
}

// Path: login.socials
class Translations$login$socials$en {
	Translations$login$socials$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Continue with Google'
	String get google => 'Continue with Google';

	/// en: 'Continue with Apple'
	String get apple => 'Continue with Apple';
}

// Path: subscriptions.duration
class Translations$subscriptions$duration$en {
	Translations$subscriptions$duration$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Lifetime'
	String get lifetime => 'Lifetime';

	/// en: 'Every year'
	String get annual => 'Every year';

	/// en: 'Every 6 months'
	String get sixMonth => 'Every 6 months';

	/// en: 'Every 3 months'
	String get threeMonth => 'Every 3 months';

	/// en: 'Every 2 months'
	String get twoMonth => 'Every 2 months';

	/// en: 'Every month'
	String get monthly => 'Every month';

	/// en: 'Every week'
	String get weekly => 'Every week';
}

// Path: subscriptions.periodunit
class Translations$subscriptions$periodunit$en {
	Translations$subscriptions$periodunit$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '(one) {Day} (other) {Days}'
	String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Day',
		other: 'Days',
	);

	/// en: '(one) {Week} (other) {Weeks}'
	String week({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Week',
		other: 'Weeks',
	);

	/// en: '(one) {Month} (other) {Months}'
	String month({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Month',
		other: 'Months',
	);

	/// en: '(one) {Year} (other) {Years}'
	String year({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Year',
		other: 'Years',
	);
}

// Path: subscriptions.cancelation
class Translations$subscriptions$cancelation$en {
	Translations$subscriptions$cancelation$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Subscriptions renew automatically and are managed by ${provider}. You can cancel anytime in your ${provider} subscription settings.'
	String title({required Object provider}) => 'Subscriptions renew automatically and are managed by ${provider}. You can cancel anytime in your ${provider} subscription settings.';

	late final Translations$subscriptions$cancelation$provider$en provider = Translations$subscriptions$cancelation$provider$en._(_root);

	/// en: 'Manage my subscription'
	String get manageLabel => 'Manage my subscription';
}

// Path: settings.theme
class Translations$settings$theme$en {
	Translations$settings$theme$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Theme'
	String get label => 'Theme';

	/// en: 'Light'
	String get light => 'Light';

	/// en: 'Dark'
	String get dark => 'Dark';

	/// en: 'System'
	String get system => 'System';
}

// Path: settings.premium
class Translations$settings$premium$en {
	Translations$settings$premium$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'You are a premium user'
	String get youArePremiumUser => 'You are a premium user';

	/// en: 'Manage subscription'
	String get manageSubscription => 'Manage subscription';

	/// en: 'Upgrade to premium to unlock all features'
	String get upgradeTitle => 'Upgrade to premium to unlock all features';

	/// en: 'Upgrade Now'
	String get upgradeNow => 'Upgrade Now';
}

// Path: settings.deleteMyAccount
class Translations$settings$deleteMyAccount$en {
	Translations$settings$deleteMyAccount$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Delete my account'
	String get title => 'Delete my account';

	/// en: 'Are you sure you want to delete your account?'
	String get confirmTitle => 'Are you sure you want to delete your account?';

	/// en: 'This action is irreversible and will delete all your data.'
	String get confirmSubtitle => 'This action is irreversible and will delete all your data.';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Delete my account'
	String get confirm => 'Delete my account';

	/// en: 'You are a premium user'
	String get premiumWarningTitle => 'You are a premium user';

	/// en: 'Cancel your subscription before deleting your account to avoid being charged again, subscriptions are managed by ${provider}.'
	String premiumWarningSubtitle({required Object provider}) => 'Cancel your subscription before deleting your account to avoid being charged again, subscriptions are managed by ${provider}.';

	/// en: 'Delete anyway'
	String get confirmAnyway => 'Delete anyway';
}

// Path: settings.analytics
class Translations$settings$analytics$en {
	Translations$settings$analytics$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Anonymous analytics'
	String get label => 'Anonymous analytics';

	/// en: 'We collect anonymous usage data to improve the app. You can change this setting at any time.'
	String get description => 'We collect anonymous usage data to improve the app. You can change this setting at any time.';
}

// Path: subscriptions.cancelation.provider
class Translations$subscriptions$cancelation$provider$en {
	Translations$subscriptions$cancelation$provider$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Google Play'
	String get google => 'Google Play';

	/// en: 'App Store'
	String get apple => 'App Store';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Flutter Bootstrap',
			'common.loading' => 'Loading...',
			'common.error' => 'An error occurred',
			'common.retry' => 'Retry',
			'common.cancel' => 'Cancel',
			'common.continueLabel' => 'Continue',
			'onboarding.step' => ({required Object context, required Object total}) => 'Step ${context} of ${total}',
			'onboarding.step1.title' => 'Welcome to Flutter Bootstrap',
			'onboarding.step1.subtitle' => 'The ultimate Flutter starter app',
			'onboarding.step1.tooltip' => 'This app is designed to help you get started quickly with Flutter.',
			'onboarding.step1.continueButton' => 'Continue',
			'tos.intro.using' => 'By using this app, you agree to our',
			'tos.intro.buying' => 'By subscribing to this app, you agree to our',
			'tos.tos' => 'Terms and Conditions',
			'tos.also' => 'and our',
			'tos.privacy' => 'Privacy Policy',
			'login.loginTitle' => 'Login',
			'login.loginSubtitle' => 'Log in to continue',
			'login.login' => 'Login',
			'login.socials.google' => 'Continue with Google',
			'login.socials.apple' => 'Continue with Apple',
			'login.anonymous' => 'Continue without account',
			'login.termsAgreement' => 'By continuing, you agree to our ',
			'subscriptions.duration.lifetime' => 'Lifetime',
			'subscriptions.duration.annual' => 'Every year',
			'subscriptions.duration.sixMonth' => 'Every 6 months',
			'subscriptions.duration.threeMonth' => 'Every 3 months',
			'subscriptions.duration.twoMonth' => 'Every 2 months',
			'subscriptions.duration.monthly' => 'Every month',
			'subscriptions.duration.weekly' => 'Every week',
			'subscriptions.periodunit.day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Day', other: 'Days', ), 
			'subscriptions.periodunit.week' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Week', other: 'Weeks', ), 
			'subscriptions.periodunit.month' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Month', other: 'Months', ), 
			'subscriptions.periodunit.year' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Year', other: 'Years', ), 
			'subscriptions.intro' => ({required num n, required Object time, required Object period}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, zero: 'Start with ${time} ${period} for free', other: 'Start with ${time} ${period} for ${n}', ), 
			'subscriptions.cancelation.title' => ({required Object provider}) => 'Subscriptions renew automatically and are managed by ${provider}. You can cancel anytime in your ${provider} subscription settings.',
			'subscriptions.cancelation.provider.google' => 'Google Play',
			'subscriptions.cancelation.provider.apple' => 'App Store',
			'subscriptions.cancelation.manageLabel' => 'Manage my subscription',
			'settings.account' => 'Account',
			'settings.preferences' => 'Preferences',
			'settings.support' => 'Support',
			'settings.debug' => 'Debug',
			'settings.restorePurchases' => 'Restore purchases',
			'settings.contactUs' => 'Contact us',
			'settings.termsOfService' => 'Terms of Service',
			'settings.privacyPolicy' => 'Privacy Policy',
			'settings.licenses' => 'Licenses',
			'settings.onboarding' => 'Onboarding',
			'settings.restorePurchaseSuccess' => 'Restore purchase successful!',
			'settings.theme.label' => 'Theme',
			'settings.theme.light' => 'Light',
			'settings.theme.dark' => 'Dark',
			'settings.theme.system' => 'System',
			'settings.premium.youArePremiumUser' => 'You are a premium user',
			'settings.premium.manageSubscription' => 'Manage subscription',
			'settings.premium.upgradeTitle' => 'Upgrade to premium to unlock all features',
			'settings.premium.upgradeNow' => 'Upgrade Now',
			'settings.deleteMyAccount.title' => 'Delete my account',
			'settings.deleteMyAccount.confirmTitle' => 'Are you sure you want to delete your account?',
			'settings.deleteMyAccount.confirmSubtitle' => 'This action is irreversible and will delete all your data.',
			'settings.deleteMyAccount.cancel' => 'Cancel',
			'settings.deleteMyAccount.confirm' => 'Delete my account',
			'settings.deleteMyAccount.premiumWarningTitle' => 'You are a premium user',
			'settings.deleteMyAccount.premiumWarningSubtitle' => ({required Object provider}) => 'Cancel your subscription before deleting your account to avoid being charged again, subscriptions are managed by ${provider}.',
			'settings.deleteMyAccount.confirmAnyway' => 'Delete anyway',
			'settings.analytics.label' => 'Anonymous analytics',
			'settings.analytics.description' => 'We collect anonymous usage data to improve the app. You can change this setting at any time.',
			_ => null,
		};
	}
}
