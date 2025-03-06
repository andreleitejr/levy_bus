import 'package:levy_shared_entities/entities.dart';

abstract class SeatRepository {
  Future<List<SeatEntity>> get(List<SeatEntity> seats);
}
