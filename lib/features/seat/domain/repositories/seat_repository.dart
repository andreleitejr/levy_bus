import 'package:levy_shared_entities/shared_entities.dart';

abstract class SeatRepository {
  Future<List<SeatEntity>> get(List<SeatEntity> seats);
}
