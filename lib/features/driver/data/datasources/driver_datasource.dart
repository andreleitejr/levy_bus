import 'package:levy_shared_entities/shared_entities.dart';

abstract class DriverDataSource {
  Future<DriverModel> get(String id);
}
