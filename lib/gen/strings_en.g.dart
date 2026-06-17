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

	/// en: 'Flutter Bootstrap'
	String get appName => 'Flutter Bootstrap';

	late final Translations$login$en login = Translations$login$en._(_root);
	late final Translations$subscriptions$en subscriptions = Translations$subscriptions$en._(_root);
}

// Path: login
class Translations$login$en {
	Translations$login$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Login'
	String get loginTitle => 'Login';

	/// en: 'Login'
	String get login => 'Login';

	late final Translations$login$socials$en socials = Translations$login$socials$en._(_root);

	/// en: 'Continue without account'
	String get anonymous => 'Continue without account';
}

// Path: subscriptions
class Translations$subscriptions$en {
	Translations$subscriptions$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final Translations$subscriptions$duration$en duration = Translations$subscriptions$duration$en._(_root);
	late final Translations$subscriptions$periodunit$en periodunit = Translations$subscriptions$periodunit$en._(_root);
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

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Flutter Bootstrap',
			'login.loginTitle' => 'Login',
			'login.login' => 'Login',
			'login.socials.google' => 'Continue with Google',
			'login.socials.apple' => 'Continue with Apple',
			'login.anonymous' => 'Continue without account',
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
			_ => null,
		};
	}
}
