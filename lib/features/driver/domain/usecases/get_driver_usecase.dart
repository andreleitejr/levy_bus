
import 'package:levy_shared_entities/shared_entities.dart';

abstract class GetDriverUseCase {
  Future<DriverEntity> call(String id);
}
