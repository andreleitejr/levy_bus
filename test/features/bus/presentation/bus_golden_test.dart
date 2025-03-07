import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:levy_bus/bus.dart';
import 'package:levy_shared_entities/shared_entities.dart';
import 'package:levy_test_utils/test_utils.dart';
import 'package:levy_theme/core/theme/theme.dart';
import 'package:mocktail/mocktail.dart';

final class BusDataSourceMock extends Mock implements BusDataSource {}

final class GetBusUseCaseMock extends Mock implements GetBusUseCase {}

void main() {
  late BusDataSourceMock busDataSourceMock;
  late GetBusUseCaseMock getBusUseCaseMock;

  setUpAll(() {
    busDataSourceMock = BusDataSourceMock();
    getBusUseCaseMock = GetBusUseCaseMock();

    GetIt.instance.registerFactory<BusDataSource>(() => busDataSourceMock);
    GetIt.instance.registerFactory<GetBusUseCase>(() => getBusUseCaseMock);
  });

  final search = SearchModel(
    departureAddress: AddressModel.fromJson(AddressMock.response.first),
    departureTime: '04:15',
    returnAddress: AddressModel.fromJson(AddressMock.response.last),
    returnTime: '16:00',
  );

  final bus = BusModel.fromJson(BusMock.response.first);

  group('Bus Page Golden Test', () {
    testWidgets('Bus Page Error', (tester) async {
      final errorMessage = 'Failed to load buses';

      when(() => getBusUseCaseMock(search)).thenThrow(Exception(errorMessage));

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'BusError',
      );
    });

    testWidgets('Bus Page Loading', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: BusShimmer(onPop: () {}),
        testName: 'BusLoading',
      );
    });

    testWidgets('Departure Bus Page Success', (tester) async {
      final c = Completer<List<BusModel>>();
      when(() => busDataSourceMock.get(search)).thenAnswer((_) async {
        return c.future;
      });

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: BusWidget(
          items: [
            bus,
            bus,
            bus,
          ],
          onPop: () {},
          onItemPressed: (bus) {},
        ),
        testName: 'DepartureBusSuccess',
      );

      c.complete(BusMock.response.map<BusModel>((bus) {
        return BusModel.fromJson(bus);
      }).toList());
    });

    testWidgets('Return Bus Page Success', (tester) async {
      final c = Completer<List<BusModel>>();

      when(() => busDataSourceMock.get(search))
          .thenAnswer((_) async {
        return c.future;
      });

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: BusWidget(
          items: [
            bus,
            bus,
            bus,
          ],
          onPop: () {},
          onItemPressed: (bus) {},
          selected: bus,
        ),
        testName: 'ReturnBusSuccess',
      );

      c.complete(BusMock.response.map<BusModel>((address) {
        return BusModel.fromJson(address);
      }).toList());
    });
  });
}
