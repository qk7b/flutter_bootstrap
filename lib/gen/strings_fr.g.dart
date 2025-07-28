///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsFr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override String get appName => 'Flutter Bootstrap';
	@override late final _TranslationsErrorsFr errors = _TranslationsErrorsFr._(_root);
	@override late final _TranslationsLoginFr login = _TranslationsLoginFr._(_root);
	@override late final _TranslationsSubscriptionsFr subscriptions = _TranslationsSubscriptionsFr._(_root);
}

// Path: errors
class _TranslationsErrorsFr implements TranslationsErrorsEn {
	_TranslationsErrorsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsErrorsEmailFr email = _TranslationsErrorsEmailFr._(_root);
	@override late final _TranslationsErrorsPasswordFr password = _TranslationsErrorsPasswordFr._(_root);
}

// Path: login
class _TranslationsLoginFr implements TranslationsLoginEn {
	_TranslationsLoginFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsLoginLoginFr login = _TranslationsLoginLoginFr._(_root);
	@override late final _TranslationsLoginRegisterFr register = _TranslationsLoginRegisterFr._(_root);
}

// Path: purchases
class _TranslationsSubscriptionsFr implements TranslationsSubscriptionsEn {
	_TranslationsSubscriptionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSubscriptionsDurationFr duration = _TranslationsSubscriptionsDurationFr._(_root);
	@override late final _TranslationsSubscriptionsPeriodunitFr periodunit = _TranslationsSubscriptionsPeriodunitFr._(_root);
}

// Path: errors.email
class _TranslationsErrorsEmailFr implements TranslationsErrorsEmailEn {
	_TranslationsErrorsEmailFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Nous avons besoin de votre adresse email';
	@override String get invalid => 'Il semblerait que votre adresse email ne soit pas valide';
}

// Path: errors.password
class _TranslationsErrorsPasswordFr implements TranslationsErrorsPasswordEn {
	_TranslationsErrorsPasswordFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get empty => 'Nous avons besoin de votre mot de passe';
	@override String get invalid => 'Votre mot de passe doit contenir au moins 6 caractères';
}

// Path: login.login
class _TranslationsLoginLoginFr implements TranslationsLoginLoginEn {
	_TranslationsLoginLoginFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get loginTitle => 'Connexion';
	@override String get email => 'Email';
	@override String get password => 'Mot de passe';
	@override String get login => 'Connexion';
	@override String get register => 'Créer un compte';
	@override String get forgotPassword => 'Mot de passe oublié ?';
	@override late final _TranslationsLoginLoginSocialsFr socials = _TranslationsLoginLoginSocialsFr._(_root);
}

// Path: login.register
class _TranslationsLoginRegisterFr implements TranslationsLoginRegisterEn {
	_TranslationsLoginRegisterFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get registerTitle => 'Créer un compte';
	@override String get email => 'Email';
	@override String get password => 'Mot de passe';
	@override String get confirmPassword => 'Confirmation';
	@override String get register => 'Créer mon compte';
}

// Path: purchases.duration
class _TranslationsSubscriptionsDurationFr implements TranslationsSubscriptionsDurationEn {
	_TranslationsSubscriptionsDurationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get lifetime => 'A vie';
	@override String get annual => 'Tous les year';
	@override String get sixMonth => 'Tous les 6 mois';
	@override String get threeMonth => 'Tous les 3 mois';
	@override String get twoMonth => 'Tous les 2 mois';
	@override String get monthly => 'Tous les mois';
	@override String get weekly => 'Toutes les semaines';
}

// Path: purchases.periodunit
class _TranslationsSubscriptionsPeriodunitFr implements TranslationsSubscriptionsPeriodunitEn {
	_TranslationsSubscriptionsPeriodunitFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'Jour',
		other: 'Jours',
	);
	@override String week({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'Semaine',
		other: 'Semaines',
	);
	@override String month({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'Mois',
		other: 'Mois',
	);
	@override String year({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'An',
		other: 'Ans',
	);
}

// Path: login.login.socials
class _TranslationsLoginLoginSocialsFr implements TranslationsLoginLoginSocialsEn {
	_TranslationsLoginLoginSocialsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get apple => 'Apple';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Flutter Bootstrap';
			case 'errors.email.empty': return 'Nous avons besoin de votre adresse email';
			case 'errors.email.invalid': return 'Il semblerait que votre adresse email ne soit pas valide';
			case 'errors.password.empty': return 'Nous avons besoin de votre mot de passe';
			case 'errors.password.invalid': return 'Votre mot de passe doit contenir au moins 6 caractères';
			case 'login.login.loginTitle': return 'Connexion';
			case 'login.login.email': return 'Email';
			case 'login.login.password': return 'Mot de passe';
			case 'login.login.login': return 'Connexion';
			case 'login.login.register': return 'Créer un compte';
			case 'login.login.forgotPassword': return 'Mot de passe oublié ?';
			case 'login.login.socials.google': return 'Google';
			case 'login.login.socials.apple': return 'Apple';
			case 'login.register.registerTitle': return 'Créer un compte';
			case 'login.register.email': return 'Email';
			case 'login.register.password': return 'Mot de passe';
			case 'login.register.confirmPassword': return 'Confirmation';
			case 'login.register.register': return 'Créer mon compte';
			case 'purchases.duration.lifetime': return 'A vie';
			case 'purchases.duration.annual': return 'Tous les year';
			case 'purchases.duration.sixMonth': return 'Tous les 6 mois';
			case 'purchases.duration.threeMonth': return 'Tous les 3 mois';
			case 'purchases.duration.twoMonth': return 'Tous les 2 mois';
			case 'purchases.duration.monthly': return 'Tous les mois';
			case 'purchases.duration.weekly': return 'Toutes les semaines';
			case 'purchases.periodunit.day': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
				one: 'Jour',
				other: 'Jours',
			);
			case 'purchases.periodunit.week': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
				one: 'Semaine',
				other: 'Semaines',
			);
			case 'purchases.periodunit.month': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
				one: 'Mois',
				other: 'Mois',
			);
			case 'purchases.periodunit.year': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
				one: 'An',
				other: 'Ans',
			);
			default: return null;
		}
	}
}

