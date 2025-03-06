import 'package:levy_shared_entities/entities.dart';

abstract class GetSeatUseCase {
  Future<List<SeatEntity>> call(List<SeatEntity> seats);
}
