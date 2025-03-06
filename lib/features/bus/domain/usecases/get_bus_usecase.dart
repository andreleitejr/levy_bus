import 'package:levy_shared_entities/entities.dart';

abstract class GetBusUseCase {
  Future<List<BusEntity>> call(SearchEntity search);
}
