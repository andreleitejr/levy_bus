import 'package:levy_shared_entities/entities.dart';

abstract class BusDataSource {
  Future<List<BusModel>> get(SearchEntity search);
}
