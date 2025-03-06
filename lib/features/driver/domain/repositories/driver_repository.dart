import 'package:levy_shared_entities/entities.dart';

abstract class DriverRepository {
  Future<DriverEntity> get(String id);
}
