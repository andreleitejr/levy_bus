import 'package:levy_shared_entities/shared_entities.dart';

abstract class BusRepository {
  Future<List<BusEntity>> get(SearchEntity search);
}
