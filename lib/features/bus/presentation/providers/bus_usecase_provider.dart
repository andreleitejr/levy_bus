import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_bus/bus.dart';

final busUseCaseProvider = Provider<GetBusUseCase>((ref) {
  return GetBusUseCaseImpl(ref.read(busRepositoryProvider));
});
