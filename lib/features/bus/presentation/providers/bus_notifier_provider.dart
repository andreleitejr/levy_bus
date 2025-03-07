import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_bus/bus.dart';
import 'package:levy_shared_entities/shared_entities.dart';

final busNotifierProvider = StateNotifierProvider<BusNotifier, BusStateImpl>((ref) {
  final search = ref.read(searchProvider);
  final busUseCase = ref.read(busUseCaseProvider);
  return BusNotifier(busUseCase, search);
});
