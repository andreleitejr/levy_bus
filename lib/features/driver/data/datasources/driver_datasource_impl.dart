import 'package:injectable/injectable.dart';
import 'package:levy_bus/features/driver/data/datasources/driver_datasource.dart';
import 'package:levy_core/core.dart';
import 'package:levy_shared_entities/shared_entities.dart';

@Injectable(as: DriverDataSource, env: [InjectEnv.impl])
final class DriverDataSourceImpl implements DriverDataSource {
  @override
  Future<DriverModel> get(String id) async {
    return DriverModel();
  }
}
