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
class TranslationsPt implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPt _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsBusPt bus = _TranslationsBusPt._(_root);
	@override late final _TranslationsSeatPt seat = _TranslationsSeatPt._(_root);
}

// Path: bus
class _TranslationsBusPt implements TranslationsBusEn {
	_TranslationsBusPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBusHeaderPt header = _TranslationsBusHeaderPt._(_root);
	@override late final _TranslationsBusResultsPt results = _TranslationsBusResultsPt._(_root);
	@override late final _TranslationsBusSelectedPt selected = _TranslationsBusSelectedPt._(_root);
	@override late final _TranslationsBusButtonPt button = _TranslationsBusButtonPt._(_root);
	@override late final _TranslationsBusErrorsPt errors = _TranslationsBusErrorsPt._(_root);
}

// Path: seat
class _TranslationsSeatPt implements TranslationsSeatEn {
	_TranslationsSeatPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSeatHeaderPt header = _TranslationsSeatHeaderPt._(_root);
	@override late final _TranslationsSeatDescriptionsPt descriptions = _TranslationsSeatDescriptionsPt._(_root);
	@override late final _TranslationsSeatButtonPt button = _TranslationsSeatButtonPt._(_root);
}

// Path: bus.header
class _TranslationsBusHeaderPt implements TranslationsBusHeaderEn {
	_TranslationsBusHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get departureTitle => 'Selecionar Ida';
	@override String get returnTitle => 'Selecionar Volta';
}

// Path: bus.results
class _TranslationsBusResultsPt implements TranslationsBusResultsEn {
	_TranslationsBusResultsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Melhor Rota';
}

// Path: bus.selected
class _TranslationsBusSelectedPt implements TranslationsBusSelectedEn {
	_TranslationsBusSelectedPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informações da Partida';
}

// Path: bus.button
class _TranslationsBusButtonPt implements TranslationsBusButtonEn {
	_TranslationsBusButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selecionar';
}

// Path: bus.errors
class _TranslationsBusErrorsPt implements TranslationsBusErrorsEn {
	_TranslationsBusErrorsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get loadError => 'Falha ao carregar os ônibus.';
}

// Path: seat.header
class _TranslationsSeatHeaderPt implements TranslationsSeatHeaderEn {
	_TranslationsSeatHeaderPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Selecionar Assento';
}

// Path: seat.descriptions
class _TranslationsSeatDescriptionsPt implements TranslationsSeatDescriptionsEn {
	_TranslationsSeatDescriptionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get selected => 'Selecionado';
	@override String get available => 'Disponível';
	@override String get unavailable => 'Indisponível';
}

// Path: seat.button
class _TranslationsSeatButtonPt implements TranslationsSeatButtonEn {
	_TranslationsSeatButtonPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirmar Assento';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'bus.header.departureTitle': return 'Selecionar Ida';
			case 'bus.header.returnTitle': return 'Selecionar Volta';
			case 'bus.results.title': return 'Melhor Rota';
			case 'bus.selected.title': return 'Informações da Partida';
			case 'bus.button.title': return 'Selecionar';
			case 'bus.errors.loadError': return 'Falha ao carregar os ônibus.';
			case 'seat.header.title': return 'Selecionar Assento';
			case 'seat.descriptions.selected': return 'Selecionado';
			case 'seat.descriptions.available': return 'Disponível';
			case 'seat.descriptions.unavailable': return 'Indisponível';
			case 'seat.button.title': return 'Confirmar Assento';
			default: return null;
		}
	}
}

