import 'package:injectable/injectable.dart';
import 'package:levy_bus/features/seat/domain/repositories/seat_repository.dart';
import 'package:levy_bus/features/seat/domain/usecases/get_seat_usecase.dart';
import 'package:levy_shared_entities/entities.dart';

@Injectable(as: GetSeatUseCase)
final class GetSeatUseCaseImpl implements GetSeatUseCase {
  const GetSeatUseCaseImpl(this._repository);

  final SeatRepository _repository;

  @override
  Future<List<SeatEntity>> call(List<SeatEntity> seats) async {
    return _repository.get(seats);
  }
}
