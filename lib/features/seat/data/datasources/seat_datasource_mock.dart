import 'package:injectable/injectable.dart';
import 'package:levy_bus/features/seat/data/datasources/seat_datasource.dart';
import 'package:levy_core/core.dart';
import 'package:levy_shared_entities/entities.dart';

@Injectable(as: SeatDataSource, env: [InjectEnv.mock])
final class SeatDataSourceMock implements SeatDataSource {
  @override
  Future<List<SeatModel>> get(List<SeatEntity> seats) async {
    await Future.delayed(const Duration(milliseconds: 600));

    return SeatMock.response.map<SeatModel>((seat) {
      return SeatModel.fromJson(seat);
    }).toList();
  }
}
