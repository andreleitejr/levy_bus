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
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
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

	// Translations
	late final TranslationsBusEn bus = TranslationsBusEn._(_root);
	late final TranslationsSeatEn seat = TranslationsSeatEn._(_root);
}

// Path: bus
class TranslationsBusEn {
	TranslationsBusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsBusHeaderEn header = TranslationsBusHeaderEn._(_root);
	late final TranslationsBusResultsEn results = TranslationsBusResultsEn._(_root);
	late final TranslationsBusSelectedEn selected = TranslationsBusSelectedEn._(_root);
	late final TranslationsBusButtonEn button = TranslationsBusButtonEn._(_root);
	late final TranslationsBusErrorsEn errors = TranslationsBusErrorsEn._(_root);
}

// Path: seat
class TranslationsSeatEn {
	TranslationsSeatEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSeatHeaderEn header = TranslationsSeatHeaderEn._(_root);
	late final TranslationsSeatDescriptionsEn descriptions = TranslationsSeatDescriptionsEn._(_root);
	late final TranslationsSeatButtonEn button = TranslationsSeatButtonEn._(_root);
}

// Path: bus.header
class TranslationsBusHeaderEn {
	TranslationsBusHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get departureTitle => 'Select Departure Bus';
	String get returnTitle => 'Select Return Bus';
}

// Path: bus.results
class TranslationsBusResultsEn {
	TranslationsBusResultsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Best Route';
}

// Path: bus.selected
class TranslationsBusSelectedEn {
	TranslationsBusSelectedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Departure Info';
}

// Path: bus.button
class TranslationsBusButtonEn {
	TranslationsBusButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select';
}

// Path: bus.errors
class TranslationsBusErrorsEn {
	TranslationsBusErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get loadError => 'Failed to load buses.';
}

// Path: seat.header
class TranslationsSeatHeaderEn {
	TranslationsSeatHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select Seat';
}

// Path: seat.descriptions
class TranslationsSeatDescriptionsEn {
	TranslationsSeatDescriptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get selected => 'Selected';
	String get available => 'Available';
	String get unavailable => 'Unavailable';
}

// Path: seat.button
class TranslationsSeatButtonEn {
	TranslationsSeatButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Confirm Seat';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'bus.header.departureTitle': return 'Select Departure Bus';
			case 'bus.header.returnTitle': return 'Select Return Bus';
			case 'bus.results.title': return 'Best Route';
			case 'bus.selected.title': return 'Departure Info';
			case 'bus.button.title': return 'Select';
			case 'bus.errors.loadError': return 'Failed to load buses.';
			case 'seat.header.title': return 'Select Seat';
			case 'seat.descriptions.selected': return 'Selected';
			case 'seat.descriptions.available': return 'Available';
			case 'seat.descriptions.unavailable': return 'Unavailable';
			case 'seat.button.title': return 'Confirm Seat';
			default: return null;
		}
	}
}

