///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	String get appName => 'Flutter Bootstrap';
	late final TranslationsErrorsEn errors = TranslationsErrorsEn._(_root);
	late final TranslationsLoginEn login = TranslationsLoginEn._(_root);
	late final TranslationsSubscriptionsEn subscriptions = TranslationsSubscriptionsEn._(_root);
}

// Path: errors
class TranslationsErrorsEn {
	TranslationsErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorsEmailEn email = TranslationsErrorsEmailEn._(_root);
	late final TranslationsErrorsPasswordEn password = TranslationsErrorsPasswordEn._(_root);
}

// Path: login
class TranslationsLoginEn {
	TranslationsLoginEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsLoginLoginEn login = TranslationsLoginLoginEn._(_root);
	late final TranslationsLoginRegisterEn register = TranslationsLoginRegisterEn._(_root);
}

// Path: purchases
class TranslationsSubscriptionsEn {
	TranslationsSubscriptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSubscriptionsDurationEn duration = TranslationsSubscriptionsDurationEn._(_root);
	late final TranslationsSubscriptionsPeriodunitEn periodunit = TranslationsSubscriptionsPeriodunitEn._(_root);
}

// Path: errors.email
class TranslationsErrorsEmailEn {
	TranslationsErrorsEmailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get empty => 'We need your email address';
	String get invalid => 'It looks like your email address is not valid';
}

// Path: errors.password
class TranslationsErrorsPasswordEn {
	TranslationsErrorsPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get empty => 'We need your password';
	String get invalid => 'Your password must be at least 6 characters long';
}

// Path: login.login
class TranslationsLoginLoginEn {
	TranslationsLoginLoginEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get loginTitle => 'Login';
	String get email => 'Email';
	String get password => 'Password';
	String get login => 'Login';
	String get register => 'Register';
	String get forgotPassword => 'Forgot your password ?';
	late final TranslationsLoginLoginSocialsEn socials = TranslationsLoginLoginSocialsEn._(_root);
}

// Path: login.register
class TranslationsLoginRegisterEn {
	TranslationsLoginRegisterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get registerTitle => 'Register';
	String get email => 'Email';
	String get password => 'Password';
	String get confirmPassword => 'Confirm Password';
	String get register => 'Register';
}

// Path: purchases.duration
class TranslationsSubscriptionsDurationEn {
	TranslationsSubscriptionsDurationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get lifetime => 'Lifetime';
	String get annual => 'Every year';
	String get sixMonth => 'Every 6 months';
	String get threeMonth => 'Every 3 months';
	String get twoMonth => 'Every 2 months';
	String get monthly => 'Every month';
	String get weekly => 'Every week';
}

// Path: purchases.periodunit
class TranslationsSubscriptionsPeriodunitEn {
	TranslationsSubscriptionsPeriodunitEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Day',
		other: 'Days',
	);
	String week({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Week',
		other: 'Weeks',
	);
	String month({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Month',
		other: 'Months',
	);
	String year({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Year',
		other: 'Years',
	);
}

// Path: login.login.socials
class TranslationsLoginLoginSocialsEn {
	TranslationsLoginLoginSocialsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get google => 'Google';
	String get apple => 'Apple';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Flutter Bootstrap';
			case 'errors.email.empty': return 'We need your email address';
			case 'errors.email.invalid': return 'It looks like your email address is not valid';
			case 'errors.password.empty': return 'We need your password';
			case 'errors.password.invalid': return 'Your password must be at least 6 characters long';
			case 'login.login.loginTitle': return 'Login';
			case 'login.login.email': return 'Email';
			case 'login.login.password': return 'Password';
			case 'login.login.login': return 'Login';
			case 'login.login.register': return 'Register';
			case 'login.login.forgotPassword': return 'Forgot your password ?';
			case 'login.login.socials.google': return 'Google';
			case 'login.login.socials.apple': return 'Apple';
			case 'login.register.registerTitle': return 'Register';
			case 'login.register.email': return 'Email';
			case 'login.register.password': return 'Password';
			case 'login.register.confirmPassword': return 'Confirm Password';
			case 'login.register.register': return 'Register';
			case 'purchases.duration.lifetime': return 'Lifetime';
			case 'purchases.duration.annual': return 'Every year';
			case 'purchases.duration.sixMonth': return 'Every 6 months';
			case 'purchases.duration.threeMonth': return 'Every 3 months';
			case 'purchases.duration.twoMonth': return 'Every 2 months';
			case 'purchases.duration.monthly': return 'Every month';
			case 'purchases.duration.weekly': return 'Every week';
			case 'purchases.periodunit.day': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				one: 'Day',
				other: 'Days',
			);
			case 'purchases.periodunit.week': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				one: 'Week',
				other: 'Weeks',
			);
			case 'purchases.periodunit.month': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				one: 'Month',
				other: 'Months',
			);
			case 'purchases.periodunit.year': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				one: 'Year',
				other: 'Years',
			);
			default: return null;
		}
	}
}

