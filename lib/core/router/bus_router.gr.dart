// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:levy_bus/features/bus/presentation/pages/bus_page.dart' as _i1;
import 'package:levy_bus/features/seat/presentation/pages/seat_page.dart'
    as _i2;
import 'package:levy_shared_entities/shared_entities.dart' as _i5;

/// generated route for
/// [_i1.BusPage]
class BusRoute extends _i3.PageRouteInfo<BusRouteArgs> {
  BusRoute({
    _i4.Key? key,
    required _i5.SearchEntity search,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          BusRoute.name,
          args: BusRouteArgs(
            key: key,
            search: search,
          ),
          initialChildren: children,
        );

  static const String name = 'BusRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BusRouteArgs>();
      return _i1.BusPage(
        key: args.key,
        search: args.search,
      );
    },
  );
}

class BusRouteArgs {
  const BusRouteArgs({
    this.key,
    required this.search,
  });

  final _i4.Key? key;

  final _i5.SearchEntity search;

  @override
  String toString() {
    return 'BusRouteArgs{key: $key, search: $search}';
  }
}

/// generated route for
/// [_i2.SeatPage]
class SeatRoute extends _i3.PageRouteInfo<SeatRouteArgs> {
  SeatRoute({
    _i4.Key? key,
    required List<_i5.SeatEntity> items,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          SeatRoute.name,
          args: SeatRouteArgs(
            key: key,
            items: items,
          ),
          initialChildren: children,
        );

  static const String name = 'SeatRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SeatRouteArgs>();
      return _i2.SeatPage(
        key: args.key,
        items: args.items,
      );
    },
  );
}

class SeatRouteArgs {
  const SeatRouteArgs({
    this.key,
    required this.items,
  });

  final _i4.Key? key;

  final List<_i5.SeatEntity> items;

  @override
  String toString() {
    return 'SeatRouteArgs{key: $key, items: $items}';
  }
}
