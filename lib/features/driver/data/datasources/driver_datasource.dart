import 'package:levy_shared_entities/entities.dart';

abstract class DriverDataSource {
  Future<DriverModel> get(String id);
}
