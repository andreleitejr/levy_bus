import 'package:levy_shared_entities/shared_entities.dart';
import 'package:levy_theme/core/theme/theme.dart';

final class BusStateImpl implements GenericStateBase {
  final List<BusEntity> data;
  final BusEntity? departureBus;
  final SeatEntity? departureSeat;
  final BusEntity? returnBus;
  final SeatEntity? returnSeat;

  @override
  final String errorMessage;

  @override
  final bool isLoading;

  const BusStateImpl({
    this.data = const [],
    this.departureBus,
    this.departureSeat,
    this.returnBus,
    this.returnSeat,
    this.errorMessage = '',
    this.isLoading = false,
  });

  const BusStateImpl.loading() : this(isLoading: true);
  const BusStateImpl.success(List<BusEntity> data) : this(data: data);
  const BusStateImpl.error(String message) : this(errorMessage: message);

  BusStateImpl copyWith({
    List<BusEntity>? data,
    BusEntity? departureBus,
    SeatEntity? departureSeat,
    BusEntity? returnBus,
    SeatEntity? returnSeat,
    String? errorMessage,
    bool? isLoading,
  }) {
    return BusStateImpl(
      data: data ?? this.data,
      departureBus: departureBus ?? this.departureBus,
      departureSeat: departureSeat ?? this.departureSeat,
      returnBus: returnBus ?? this.returnBus,
      returnSeat: returnSeat ?? this.returnSeat,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
