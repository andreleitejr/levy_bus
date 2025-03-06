import 'package:auto_route/auto_route.dart';
import 'package:levy_bus/core/router/bus_router.gr.dart';

@AutoRouterConfig()
final class BusRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: BusRoute.page),
    AutoRoute(page: SeatRoute.page),
  ];
}