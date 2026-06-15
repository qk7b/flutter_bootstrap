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
	@override late final _Translations$login$fr login = _Translations$login$fr._(_root);
	@override late final _Translations$subscriptions$fr subscriptions = _Translations$subscriptions$fr._(_root);
}

// Path: login
class _Translations$login$fr implements Translations$login$en {
	_Translations$login$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get loginTitle => 'Connexion';
	@override String get login => 'Connexion';
	@override late final _Translations$login$socials$fr socials = _Translations$login$socials$fr._(_root);
	@override String get anonymous => 'Continuer sans compte';
}

// Path: subscriptions
class _Translations$subscriptions$fr implements Translations$subscriptions$en {
	_Translations$subscriptions$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$subscriptions$duration$fr duration = _Translations$subscriptions$duration$fr._(_root);
	@override late final _Translations$subscriptions$periodunit$fr periodunit = _Translations$subscriptions$periodunit$fr._(_root);
}

// Path: login.socials
class _Translations$login$socials$fr implements Translations$login$socials$en {
	_Translations$login$socials$fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get apple => 'Apple';
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

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Flutter Bootstrap',
			'login.loginTitle' => 'Connexion',
			'login.login' => 'Connexion',
			'login.socials.google' => 'Google',
			'login.socials.apple' => 'Apple',
			'login.anonymous' => 'Continuer sans compte',
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
			_ => null,
		};
	}
}
