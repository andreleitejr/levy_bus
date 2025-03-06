import 'package:injectable/injectable.dart';
import 'package:levy_bus/features/seat/data/datasources/seat_datasource.dart';
import 'package:levy_core/core.dart';
import 'package:levy_shared_entities/entities.dart';

@Injectable(as: SeatDataSource, env: [InjectEnv.impl])
final class SeatDataSourceImpl implements SeatDataSource {
  @override
  Future<List<SeatModel>> get(List<SeatEntity> seats) async {
    return [];
  }
}
