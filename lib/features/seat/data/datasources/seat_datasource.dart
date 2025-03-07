import 'package:levy_shared_entities/shared_entities.dart';

abstract class SeatDataSource {
  Future<List<SeatModel>> get(List<SeatEntity> seats);
}
