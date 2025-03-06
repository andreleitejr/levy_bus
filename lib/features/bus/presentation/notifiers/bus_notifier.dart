import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_bus/bus.dart';
import 'package:levy_shared_entities/entities.dart';

final class BusNotifier extends StateNotifier<BusStateImpl> {
  final GetBusUseCase _searchUseCase;

  BusNotifier(this._searchUseCase) : super(const BusStateImpl.loading());

  late final SearchEntity _search;

  Future<void> init(SearchEntity search) async {
    try {
      _search = search;

      final result = await _searchUseCase(_search);

      state = BusStateImpl.success(result);
    } catch (e) {
      debugPrint('Failed to load buses: $e');
      state = BusStateImpl.error(BusTranslation.errors.loadError);
    }
  }

  Future<void> updateDepartureBus({
    required BusEntity bus,
    required SeatEntity seat,
  }) async {
    final result = await _searchUseCase(_search);

    state = state.copyWith(
      data: result,
      departureBus: bus,
      departureSeat: seat,
    );
  }

  void updateReturnBus({
    required BusEntity bus,
    required SeatEntity seat,
  }) {
    state = state.copyWith(
      returnBus: bus,
      returnSeat: seat,
    );
  }
}
