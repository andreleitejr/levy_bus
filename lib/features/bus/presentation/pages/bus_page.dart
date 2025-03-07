import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy_bus/bus.dart';
import 'package:levy_shared_entities/shared_entities.dart';
import 'package:levy_theme/core/theme/theme.dart';

@RoutePage()
final class BusPage extends ConsumerStatefulWidget {
  const BusPage({
    super.key,
    required this.search,
  });

  final SearchEntity search;

  @override
  ConsumerState<BusPage> createState() => _BusPageState();
}

final class _BusPageState extends ConsumerState<BusPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(busNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(busNotifierProvider);
    final notifier = ref.read(busNotifierProvider.notifier);

    return ThemeStateBuilder(
      state: state,
      loading: BusShimmer(
        onPop: () => context.router.back(),
      ),
      success: BusWidget(
        items: state.data,
        onPop: () => context.router.back(),
        onItemPressed: (item) async {
          await _onItemPressed(
            state: state,
            notifier: notifier,
            item: item,
          );
        },
        selected: state.departureBus,
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }

  Future<void> _onItemPressed({
    required BusStateImpl state,
    required BusNotifier notifier,
    required BusEntity item,
  }) async {
    final seat = await _selectSeat(context, item);

    if (seat == null) return;

    if (state.departureBus == null) {
      await notifier.updateDepartureBus(bus: item, seat: seat);
    } else {
      notifier.updateReturnBus(bus: item, seat: seat);

      _proceedToPayment();
    }
  }

  Future<SeatEntity?> _selectSeat(BuildContext context, BusEntity item) async {
    return await context.router.push<SeatEntity>(SeatRoute(items: item.seats));
  }

  Future<void> _proceedToPayment() async {
    final state = ref.read(busNotifierProvider);
    final router = context.router;

    final departureBus = state.departureBus;
    final returnBus = state.returnBus;

    if (departureBus != null && returnBus != null) {
      router.pushNamed('/payment');
    }
  }
}
