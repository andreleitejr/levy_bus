import 'package:levy_shared_entities/entities.dart';

abstract class BusRepository {
  Future<List<BusEntity>> get(SearchEntity search);
}
