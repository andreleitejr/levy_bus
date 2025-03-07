import 'package:injectable/injectable.dart';
import 'package:levy_bus/features/seat/data/datasources/seat_datasource.dart';
import 'package:levy_bus/features/seat/domain/repositories/seat_repository.dart';
import 'package:levy_shared_entities/shared_entities.dart';

@Injectable(as: SeatRepository)
final class SeatRepositoryImpl implements SeatRepository {
  const SeatRepositoryImpl(this._datasource);

  final SeatDataSource _datasource;

  @override
  Future<List<SeatEntity>> get(List<SeatEntity> seats) async {
    return _datasource.get(seats);
  }
}
