import 'package:injectable/injectable.dart';
import 'package:levy_bus/bus.dart';
import 'package:levy_core/core.dart';
import 'package:levy_shared_entities/entities.dart';

@Injectable(as: BusDataSource, env: [InjectEnv.impl])
final class BusDataSourceImpl implements BusDataSource {
  @override
  Future<List<BusModel>> get(SearchEntity search) async {
    return [];
  }
}
