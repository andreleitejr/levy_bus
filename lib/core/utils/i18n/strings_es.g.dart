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
class TranslationsEs implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsBusEs bus = _TranslationsBusEs._(_root);
	@override late final _TranslationsSeatEs seat = _TranslationsSeatEs._(_root);
}

// Path: bus
class _TranslationsBusEs implements TranslationsBusEn {
	_TranslationsBusEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBusHeaderEs header = _TranslationsBusHeaderEs._(_root);
	@override late final _TranslationsBusResultsEs results = _TranslationsBusResultsEs._(_root);
	@override late final _TranslationsBusSelectedEs selected = _TranslationsBusSelectedEs._(_root);
	@override late final _TranslationsBusButtonEs button = _TranslationsBusButtonEs._(_root);
	@override late final _TranslationsBusErrorsEs errors = _TranslationsBusErrorsEs._(_root);
}

// Path: seat
class _TranslationsSeatEs implements TranslationsSeatEn {
	_TranslationsSeatEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSeatHeaderEs header = _TranslationsSeatHeaderEs._(_root);
	@override late final _TranslationsSeatDescriptionsEs descriptions = _TranslationsSeatDescriptionsEs._(_root);
	@override late final _TranslationsSeatButtonEs button = _TranslationsSeatButtonEs._(_root);
}

// Path: bus.header
class _TranslationsBusHeaderEs implements TranslationsBusHeaderEn {
	_TranslationsBusHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get departureTitle => 'Seleccionar autobús de ida';
	@override String get returnTitle => 'Seleccionar autobús de regreso';
}

// Path: bus.results
class _TranslationsBusResultsEs implements TranslationsBusResultsEn {
	_TranslationsBusResultsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mejor ruta';
}

// Path: bus.selected
class _TranslationsBusSelectedEs implements TranslationsBusSelectedEn {
	_TranslationsBusSelectedEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Información de salida';
}

// Path: bus.button
class _TranslationsBusButtonEs implements TranslationsBusButtonEn {
	_TranslationsBusButtonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seleccionar';
}

// Path: bus.errors
class _TranslationsBusErrorsEs implements TranslationsBusErrorsEn {
	_TranslationsBusErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get loadError => 'Error al cargar los autobuses.';
}

// Path: seat.header
class _TranslationsSeatHeaderEs implements TranslationsSeatHeaderEn {
	_TranslationsSeatHeaderEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seleccionar asiento';
}

// Path: seat.descriptions
class _TranslationsSeatDescriptionsEs implements TranslationsSeatDescriptionsEn {
	_TranslationsSeatDescriptionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get selected => 'Seleccionado';
	@override String get available => 'Disponible';
	@override String get unavailable => 'No disponible';
}

// Path: seat.button
class _TranslationsSeatButtonEs implements TranslationsSeatButtonEn {
	_TranslationsSeatButtonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirmar asiento';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'bus.header.departureTitle': return 'Seleccionar autobús de ida';
			case 'bus.header.returnTitle': return 'Seleccionar autobús de regreso';
			case 'bus.results.title': return 'Mejor ruta';
			case 'bus.selected.title': return 'Información de salida';
			case 'bus.button.title': return 'Seleccionar';
			case 'bus.errors.loadError': return 'Error al cargar los autobuses.';
			case 'seat.header.title': return 'Seleccionar asiento';
			case 'seat.descriptions.selected': return 'Seleccionado';
			case 'seat.descriptions.available': return 'Disponible';
			case 'seat.descriptions.unavailable': return 'No disponible';
			case 'seat.button.title': return 'Confirmar asiento';
			default: return null;
		}
	}
}

