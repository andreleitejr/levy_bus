import 'package:levy_shared_entities/shared_entities.dart';

abstract class GetBusUseCase {
  Future<List<BusEntity>> call(SearchEntity search);
}
