import 'package:levy_shared_entities/shared_entities.dart';

abstract class BusDataSource {
  Future<List<BusModel>> get(SearchEntity search);
}
