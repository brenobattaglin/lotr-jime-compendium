import 'package:flutter_test/flutter_test.dart';
import 'package:jime_compendium/features/onboarding/onboarding.dart';
import 'package:widget_driver_test/widget_driver_test.dart';

void main() {
  Future<DriverTester<OnboardingViewDriver>> createDriver(
          WidgetTester tester) async =>
      tester.getDriverTester<OnboardingViewDriver>(
        driverBuilder: () => OnboardingViewDriver(),
      );

  group('when driver is called', () {
    testWidgets('should return proper page index', (WidgetTester tester) async {
      final driverTester = await createDriver(tester);
      final driver = driverTester.driver;

      expect(driver.pageIndex, 0);
    });

    testWidgets('should return proper page count', (WidgetTester tester) async {
      final driverTester = await createDriver(tester);
      final driver = driverTester.driver;

      expect(driver.pageCount, 4);
    });

    testWidgets('should return page controller', (WidgetTester tester) async {
      final driverTester = await createDriver(tester);
      final driver = driverTester.driver;

      expect(driver.pageController, isNotNull);
    });

    testWidgets('should return proper page index after page change',
        (WidgetTester tester) async {
      final driverTester = await createDriver(tester);
      final driver = driverTester.driver;

      expect(driver.pageIndex, 0);
      driver.setPageIndex(1);
      expect(driver.pageIndex, 1);
    });

    testWidgets('should return proper slider data',
        (WidgetTester tester) async {
      final driverTester = await createDriver(tester);
      final driver = driverTester.driver;

      expect(driver.sliderData, isNotNull);
      expect(driver.sliderData.length, 4);
      expect(driver.sliderData, isA<List<SliderData>>());
    });
  });
}
