import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_bus/bus.dart';
import 'package:levy_shared_entities/shared_entities.dart';

final class BusNotifier extends StateNotifier<BusStateImpl> {
  final GetBusUseCase _searchUseCase;
  final SearchEntity _search;

  BusNotifier(this._searchUseCase, this._search) : super(const BusStateImpl.loading());

  Future<void> init() async {
    try {
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
