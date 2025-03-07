import 'package:injectable/injectable.dart';
import 'package:levy_bus/bus.dart';
import 'package:levy_shared_entities/shared_entities.dart';

@Injectable(as: BusRepository)
final class BusRepositoryImpl implements BusRepository {
  const BusRepositoryImpl(this._datasource);

  final BusDataSource _datasource;

  @override
  Future<List<BusEntity>> get(SearchEntity search) async {
    return _datasource.get(search);
  }
}
