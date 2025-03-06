import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_bus/bus.dart';

final busRepositoryProvider = Provider<BusRepository>((ref) {
  return BusRepositoryImpl(ref.read(busDataSourceProvider));
});
