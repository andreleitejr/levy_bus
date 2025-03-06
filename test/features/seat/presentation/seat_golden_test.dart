import 'package:flutter_test/flutter_test.dart';
import 'package:levy_bus/bus.dart';
import 'package:levy_shared_entities/entities.dart';
import 'package:levy_test_utils/test_utils.dart';
import 'package:levy_theme/core/theme/theme.dart';

void main() {
  group('Seat Page Golden Test', () {
    testWidgets('Seat Page Error', (tester) async {
      final errorMessage = 'Failed to load Seat Page';

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'SeatError',
      );
    });

    testWidgets('Seat Page Loading', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeLoadingWidget(),
        testName: 'SeatLoading',
      );
    });

    testWidgets('Seat Page Success', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: SeatPage(
          items: SeatMock.response.map((seat) => SeatModel.fromJson(seat)).toList(),
        ),
        testName: 'SeatSuccess',
      );
    });
  });
}
