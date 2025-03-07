import 'package:levy_shared_entities/shared_entities.dart';

abstract class DriverRepository {
  Future<DriverEntity> get(String id);
}
