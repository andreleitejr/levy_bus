import 'package:injectable/injectable.dart';
import 'package:levy_bus/bus.dart';
import 'package:levy_shared_entities/entities.dart';

@Injectable(as: GetDriverUseCase)
final class GetDriverUseCaseImpl implements GetDriverUseCase {
  const GetDriverUseCaseImpl(this._repository);

  final DriverRepository _repository;

  @override
  Future<DriverEntity> call(String id) async {
    return _repository.get(id);
  }
}
