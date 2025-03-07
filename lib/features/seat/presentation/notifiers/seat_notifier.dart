import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_bus/features/seat/presentation/states/seat_state.dart';
import 'package:levy_shared_entities/shared_entities.dart';

final class SeatNotifier extends StateNotifier<SeatState> {
  SeatNotifier(List<SeatEntity> seats) : super(SeatState.loading());

  Future<void> init(List<SeatEntity> seats) async {
    try {
      state = SeatState.success(seats);
    } catch (e) {
      state = SeatState.error('Failed to load seats: ${e.toString()}');
    }
  }

  void updateSeat(SeatEntity seat) {
    state = state.copyWith(
      data: state.data,
      selectedSeat: seat,
    );
  }
}
