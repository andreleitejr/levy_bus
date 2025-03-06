import 'package:injectable/injectable.dart';
import 'package:levy_bus/bus.dart';
import 'package:levy_shared_entities/entities.dart';

@Injectable(as: DriverRepository)
final class DriverRepositoryImpl implements DriverRepository {
  const DriverRepositoryImpl(this._datasource);

  final DriverDataSource _datasource;

  @override
  Future<DriverEntity> get(String id) async {
    return _datasource.get(id);
  }
}
