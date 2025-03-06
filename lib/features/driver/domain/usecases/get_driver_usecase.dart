
import 'package:levy_shared_entities/entities.dart';

abstract class GetDriverUseCase {
  Future<DriverEntity> call(String id);
}
