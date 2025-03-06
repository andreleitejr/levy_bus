//@GeneratedMicroModule;LevyBusPackageModule;package:levy_bus/core/inject/inject.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:levy_bus/bus.dart' as _i972;
import 'package:levy_bus/features/bus/data/datasources/bus_datasource_impl.dart'
    as _i339;
import 'package:levy_bus/features/bus/data/datasources/bus_datasource_mock.dart'
    as _i183;
import 'package:levy_bus/features/bus/data/repositories/bus_repository_impl.dart'
    as _i955;
import 'package:levy_bus/features/bus/domain/usecases/get_bus_usecase_impl.dart'
    as _i223;
import 'package:levy_bus/features/driver/data/datasources/driver_datasource.dart'
    as _i657;
import 'package:levy_bus/features/driver/data/datasources/driver_datasource_impl.dart'
    as _i452;
import 'package:levy_bus/features/driver/data/datasources/driver_datasource_mock.dart'
    as _i232;
import 'package:levy_bus/features/driver/data/repositories/driver_repository_impl.dart'
    as _i893;
import 'package:levy_bus/features/driver/domain/usecases/get_driver_usecase_impl.dart'
    as _i770;
import 'package:levy_bus/features/seat/data/datasources/seat_datasource.dart'
    as _i938;
import 'package:levy_bus/features/seat/data/datasources/seat_datasource_impl.dart'
    as _i620;
import 'package:levy_bus/features/seat/data/datasources/seat_datasource_mock.dart'
    as _i609;
import 'package:levy_bus/features/seat/data/repositories/seat_repository_impl.dart'
    as _i80;
import 'package:levy_bus/features/seat/domain/repositories/seat_repository.dart'
    as _i707;
import 'package:levy_bus/features/seat/domain/usecases/get_seat_usecase.dart'
    as _i369;
import 'package:levy_bus/features/seat/domain/usecases/get_seat_usecase_impl.dart'
    as _i193;

const String _impl = 'impl';
const String _mock = 'mock';

class LevyBusPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i657.DriverDataSource>(
      () => _i452.DriverDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i657.DriverDataSource>(
      () => _i232.DriverDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i972.BusDataSource>(
      () => _i183.BusDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i972.BusDataSource>(
      () => _i339.BusDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i938.SeatDataSource>(
      () => _i609.SeatDataSourceMock(),
      registerFor: {_mock},
    );
    gh.factory<_i972.DriverRepository>(
        () => _i893.DriverRepositoryImpl(gh<_i972.DriverDataSource>()));
    gh.factory<_i938.SeatDataSource>(
      () => _i620.SeatDataSourceImpl(),
      registerFor: {_impl},
    );
    gh.factory<_i972.BusRepository>(
        () => _i955.BusRepositoryImpl(gh<_i972.BusDataSource>()));
    gh.factory<_i707.SeatRepository>(
        () => _i80.SeatRepositoryImpl(gh<_i938.SeatDataSource>()));
    gh.factory<_i972.GetDriverUseCase>(
        () => _i770.GetDriverUseCaseImpl(gh<_i972.DriverRepository>()));
    gh.factory<_i369.GetSeatUseCase>(
        () => _i193.GetSeatUseCaseImpl(gh<_i707.SeatRepository>()));
    gh.factory<_i972.GetBusUseCase>(
        () => _i223.GetBusUseCaseImpl(gh<_i972.BusRepository>()));
  }
}
