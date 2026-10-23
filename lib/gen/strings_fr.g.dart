///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsFr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	final TranslationMetadata<AppLocale, Translations> _meta;
	@override TranslationMetadata<AppLocale, Translations> get $meta => _meta;

	/// Access flat map
	@override dynamic operator[](String key) => _meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override String get appName => 'Flutter Bootstrap';
	@override late final _Translations$common$fr common = _Translations$common$fr._(_root);
	@override late final _Translations$onboarding$fr onboarding = _Translations$onboarding$fr._(_root);
	@override late final _Translations$tos$fr tos = _Translations$tos$fr._(_root);
	@override late final _Translations$login$fr login = _Translations$login$fr._(_root);
	@override late final _Translations$subscriptions$fr subscriptions = _Translations$subscriptions$fr._(_root);
	@override late final _Translations$settings$fr settings = _Translations$settings$fr._(_root);
}

// Path: common
class _Translations$common$fr implements Translations$common$en {
	_Translations$common$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get loading => 'Chargement...';
	@override String get error => 'Une erreur est survenue';
	@override String get retry => 'Réessayer';
	@override String get cancel => 'Annuler';
	@override String get continueLabel => 'Continuer';
}

// Path: onboarding
class _Translations$onboarding$fr implements Translations$onboarding$en {
	_Translations$onboarding$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String step({required Object context, required Object total}) => 'Étape ${context} sur ${total}';
	@override late final _Translations$onboarding$step1$fr step1 = _Translations$onboarding$step1$fr._(_root);
}

// Path: tos
class _Translations$tos$fr implements Translations$tos$en {
	_Translations$tos$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$tos$intro$fr intro = _Translations$tos$intro$fr._(_root);
	@override String get tos => 'Termes et Conditions';
	@override String get also => 'ainsi que notre';
	@override String get privacy => 'Politique de confidentialité';
}

// Path: login
class _Translations$login$fr implements Translations$login$en {
	_Translations$login$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get loginTitle => 'Connexion';
	@override String get loginSubtitle => 'Connectez-vous pour continuer';
	@override String get login => 'Connexion';
	@override late final _Translations$login$socials$fr socials = _Translations$login$socials$fr._(_root);
	@override String get anonymous => 'Continuer sans compte';
	@override String get termsAgreement => 'En continuant, vous acceptez nos ';
}

// Path: subscriptions
class _Translations$subscriptions$fr implements Translations$subscriptions$en {
	_Translations$subscriptions$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$subscriptions$duration$fr duration = _Translations$subscriptions$duration$fr._(_root);
	@override late final _Translations$subscriptions$periodunit$fr periodunit = _Translations$subscriptions$periodunit$fr._(_root);
	@override String intro({required num n, required Object time, required Object period}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		zero: 'Commencez avec ${time} ${period} gratuitement',
		other: 'Commencez avec ${time} ${period} pour ${n}',
	);
	@override late final _Translations$subscriptions$cancelation$fr cancelation = _Translations$subscriptions$cancelation$fr._(_root);
}

// Path: settings
class _Translations$settings$fr implements Translations$settings$en {
	_Translations$settings$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get account => 'Compte';
	@override String get preferences => 'Préférences';
	@override String get support => 'Support';
	@override String get debug => 'Debug';
	@override String get restorePurchases => 'Restaurer les achats';
	@override String get contactUs => 'Contactez-nous';
	@override String get termsOfService => 'Conditions d\'utilisation';
	@override String get privacyPolicy => 'Politique de confidentialité';
	@override String get licenses => 'Licences';
	@override String get onboarding => 'Onboarding';
	@override String get restorePurchaseSuccess => 'Restauration de l\'achat réussie !';
	@override late final _Translations$settings$theme$fr theme = _Translations$settings$theme$fr._(_root);
	@override late final _Translations$settings$premium$fr premium = _Translations$settings$premium$fr._(_root);
	@override late final _Translations$settings$deleteMyAccount$fr deleteMyAccount = _Translations$settings$deleteMyAccount$fr._(_root);
	@override late final _Translations$settings$analytics$fr analytics = _Translations$settings$analytics$fr._(_root);
}

// Path: onboarding.step1
class _Translations$onboarding$step1$fr implements Translations$onboarding$step1$en {
	_Translations$onboarding$step1$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bienvenue dans Flutter Bootstrap';
	@override String get subtitle => 'L\'application de démarrage Flutter ultime';
	@override String get tooltip => 'Cette application est conçue pour vous aider à démarrer rapidement avec Flutter.';
	@override String get continueButton => 'Continuer';
}

// Path: tos.intro
class _Translations$tos$intro$fr implements Translations$tos$intro$en {
	_Translations$tos$intro$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get using => 'En utilisant cette application, vous acceptez nos';
	@override String get buying => 'En souscrivant à cette application, vous acceptez nos';
}

// Path: login.socials
class _Translations$login$socials$fr implements Translations$login$socials$en {
	_Translations$login$socials$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get google => 'Continuer avec Google';
	@override String get apple => 'Continuer avec Apple';
}

// Path: subscriptions.duration
class _Translations$subscriptions$duration$fr implements Translations$subscriptions$duration$en {
	_Translations$subscriptions$duration$fr._(this._root);

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

// Path: subscriptions.periodunit
class _Translations$subscriptions$periodunit$fr implements Translations$subscriptions$periodunit$en {
	_Translations$subscriptions$periodunit$fr._(this._root);

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

// Path: subscriptions.cancelation
class _Translations$subscriptions$cancelation$fr implements Translations$subscriptions$cancelation$en {
	_Translations$subscriptions$cancelation$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String title({required Object provider}) => 'Les abonnements sont renouvelés automatiquement et gérés par ${provider}. Vous pouvez les annuler à tout moment depuis réglages d\'abonnement de ${provider}.';
	@override late final _Translations$subscriptions$cancelation$provider$fr provider = _Translations$subscriptions$cancelation$provider$fr._(_root);
	@override String get manageLabel => 'Gérer mon abonnement';
}

// Path: settings.theme
class _Translations$settings$theme$fr implements Translations$settings$theme$en {
	_Translations$settings$theme$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get label => 'Thème';
	@override String get light => 'Clair';
	@override String get dark => 'Sombre';
	@override String get system => 'Système';
}

// Path: settings.premium
class _Translations$settings$premium$fr implements Translations$settings$premium$en {
	_Translations$settings$premium$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get youArePremiumUser => 'Vous êtes un utilisateur premium';
	@override String get manageSubscription => 'Gérer l\'abonnement';
	@override String get upgradeTitle => 'Passez en premium pour débloquer toutes les fonctionnalités';
	@override String get upgradeNow => 'Passer en premium';
}

// Path: settings.deleteMyAccount
class _Translations$settings$deleteMyAccount$fr implements Translations$settings$deleteMyAccount$en {
	_Translations$settings$deleteMyAccount$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supprimer mon compte';
	@override String get confirmTitle => 'Voulez-vous vraiment supprimer votre compte ?';
	@override String get confirmSubtitle => 'Cette action est irréversible et supprimera toutes vos données.';
	@override String get cancel => 'Annuler';
	@override String get confirm => 'Supprimer mon compte';
	@override String get premiumWarningTitle => 'Vous êtes un utilisateur premium';
	@override String premiumWarningSubtitle({required Object provider}) => 'Annuler votre abonnement avant de supprimer votre compte pour éviter d\'être facturé à nouveau, les abonnements sont gérés par ${provider}.';
	@override String get confirmAnyway => 'Supprimer quand même';
}

// Path: settings.analytics
class _Translations$settings$analytics$fr implements Translations$settings$analytics$en {
	_Translations$settings$analytics$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get label => 'Collecte de données anonymes';
	@override String get description => 'Nous collectons des données d\'utilisation anonymes pour améliorer l\'application. Vous pouvez modifier ce paramètre à tout moment.';
}

// Path: subscriptions.cancelation.provider
class _Translations$subscriptions$cancelation$provider$fr implements Translations$subscriptions$cancelation$provider$en {
	_Translations$subscriptions$cancelation$provider$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google Play';
	@override String get apple => 'App Store';
}

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Flutter Bootstrap',
			'common.loading' => 'Chargement...',
			'common.error' => 'Une erreur est survenue',
			'common.retry' => 'Réessayer',
			'common.cancel' => 'Annuler',
			'common.continueLabel' => 'Continuer',
			'onboarding.step' => ({required Object context, required Object total}) => 'Étape ${context} sur ${total}',
			'onboarding.step1.title' => 'Bienvenue dans Flutter Bootstrap',
			'onboarding.step1.subtitle' => 'L\'application de démarrage Flutter ultime',
			'onboarding.step1.tooltip' => 'Cette application est conçue pour vous aider à démarrer rapidement avec Flutter.',
			'onboarding.step1.continueButton' => 'Continuer',
			'tos.intro.using' => 'En utilisant cette application, vous acceptez nos',
			'tos.intro.buying' => 'En souscrivant à cette application, vous acceptez nos',
			'tos.tos' => 'Termes et Conditions',
			'tos.also' => 'ainsi que notre',
			'tos.privacy' => 'Politique de confidentialité',
			'login.loginTitle' => 'Connexion',
			'login.loginSubtitle' => 'Connectez-vous pour continuer',
			'login.login' => 'Connexion',
			'login.socials.google' => 'Continuer avec Google',
			'login.socials.apple' => 'Continuer avec Apple',
			'login.anonymous' => 'Continuer sans compte',
			'login.termsAgreement' => 'En continuant, vous acceptez nos ',
			'subscriptions.duration.lifetime' => 'A vie',
			'subscriptions.duration.annual' => 'Tous les year',
			'subscriptions.duration.sixMonth' => 'Tous les 6 mois',
			'subscriptions.duration.threeMonth' => 'Tous les 3 mois',
			'subscriptions.duration.twoMonth' => 'Tous les 2 mois',
			'subscriptions.duration.monthly' => 'Tous les mois',
			'subscriptions.duration.weekly' => 'Toutes les semaines',
			'subscriptions.periodunit.day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: 'Jour', other: 'Jours', ), 
			'subscriptions.periodunit.week' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: 'Semaine', other: 'Semaines', ), 
			'subscriptions.periodunit.month' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: 'Mois', other: 'Mois', ), 
			'subscriptions.periodunit.year' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: 'An', other: 'Ans', ), 
			'subscriptions.intro' => ({required num n, required Object time, required Object period}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, zero: 'Commencez avec ${time} ${period} gratuitement', other: 'Commencez avec ${time} ${period} pour ${n}', ), 
			'subscriptions.cancelation.title' => ({required Object provider}) => 'Les abonnements sont renouvelés automatiquement et gérés par ${provider}. Vous pouvez les annuler à tout moment depuis réglages d\'abonnement de ${provider}.',
			'subscriptions.cancelation.provider.google' => 'Google Play',
			'subscriptions.cancelation.provider.apple' => 'App Store',
			'subscriptions.cancelation.manageLabel' => 'Gérer mon abonnement',
			'settings.account' => 'Compte',
			'settings.preferences' => 'Préférences',
			'settings.support' => 'Support',
			'settings.debug' => 'Debug',
			'settings.restorePurchases' => 'Restaurer les achats',
			'settings.contactUs' => 'Contactez-nous',
			'settings.termsOfService' => 'Conditions d\'utilisation',
			'settings.privacyPolicy' => 'Politique de confidentialité',
			'settings.licenses' => 'Licences',
			'settings.onboarding' => 'Onboarding',
			'settings.restorePurchaseSuccess' => 'Restauration de l\'achat réussie !',
			'settings.theme.label' => 'Thème',
			'settings.theme.light' => 'Clair',
			'settings.theme.dark' => 'Sombre',
			'settings.theme.system' => 'Système',
			'settings.premium.youArePremiumUser' => 'Vous êtes un utilisateur premium',
			'settings.premium.manageSubscription' => 'Gérer l\'abonnement',
			'settings.premium.upgradeTitle' => 'Passez en premium pour débloquer toutes les fonctionnalités',
			'settings.premium.upgradeNow' => 'Passer en premium',
			'settings.deleteMyAccount.title' => 'Supprimer mon compte',
			'settings.deleteMyAccount.confirmTitle' => 'Voulez-vous vraiment supprimer votre compte ?',
			'settings.deleteMyAccount.confirmSubtitle' => 'Cette action est irréversible et supprimera toutes vos données.',
			'settings.deleteMyAccount.cancel' => 'Annuler',
			'settings.deleteMyAccount.confirm' => 'Supprimer mon compte',
			'settings.deleteMyAccount.premiumWarningTitle' => 'Vous êtes un utilisateur premium',
			'settings.deleteMyAccount.premiumWarningSubtitle' => ({required Object provider}) => 'Annuler votre abonnement avant de supprimer votre compte pour éviter d\'être facturé à nouveau, les abonnements sont gérés par ${provider}.',
			'settings.deleteMyAccount.confirmAnyway' => 'Supprimer quand même',
			'settings.analytics.label' => 'Collecte de données anonymes',
			'settings.analytics.description' => 'Nous collectons des données d\'utilisation anonymes pour améliorer l\'application. Vous pouvez modifier ce paramètre à tout moment.',
			_ => null,
		};
	}
}
