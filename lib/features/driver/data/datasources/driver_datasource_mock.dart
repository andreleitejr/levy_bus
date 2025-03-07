import 'package:injectable/injectable.dart';
import 'package:levy_bus/features/driver/data/datasources/driver_datasource.dart';
import 'package:levy_core/core.dart';
import 'package:levy_shared_entities/shared_entities.dart';

@Injectable(as: DriverDataSource, env: [InjectEnv.mock])
final class DriverDataSourceMock implements DriverDataSource {
  @override
  Future<DriverModel> get(String id) async {
    await Future.delayed(const Duration(milliseconds: 600));

    final drivers = DriverMock.response.map<DriverModel>((address) {
      return DriverModel.fromJson(address);
    }).toList();

    return drivers.firstWhere((driver) => driver.id == id);
  }
}
