import 'package:levy_shared_entities/shared_entities.dart';

abstract class GetSeatUseCase {
  Future<List<SeatEntity>> call(List<SeatEntity> seats);
}
