import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jime_compendium/config/config.dart';
import 'package:jime_compendium/features/onboarding/onboarding.dart';

import '../../../helpers.dart';

void main() {
  Widget buildWidgetForTesting(bool isActive) =>
      buildTestApp(OnboardingSlideIndicator(
        isActive: isActive,
      ));

  group('when indicator is active', () {
    testWidgets('should build indicator height properly', (tester) async {
      await tester.pumpWidget(buildWidgetForTesting(true));

      final sliderIndicatorFinder = find.byType(OnboardingSlideIndicator);
      expect(sliderIndicatorFinder, findsOneWidget);

      final animatedContainer =
          tester.widget(find.byType(AnimatedContainer)) as AnimatedContainer;

      expect(animatedContainer.constraints?.maxHeight, AppSize.s16);
    });

    testWidgets('should build indicator color properly', (tester) async {
      await tester.pumpWidget(buildWidgetForTesting(true));

      final sliderIndicatorFinder = find.byType(OnboardingSlideIndicator);
      expect(sliderIndicatorFinder, findsOneWidget);

      final animatedContainer =
          tester.widget(find.byType(AnimatedContainer)) as AnimatedContainer;
      expect(animatedContainer.decoration, isNotNull);

      final boxDecoration = animatedContainer.decoration as BoxDecoration;
      expect(boxDecoration.color, AppColors.primary);
    });
  });

  group('when indicator is not active', () {
    testWidgets('should build indicator height properly', (tester) async {
      await tester.pumpWidget(buildWidgetForTesting(false));

      final sliderIndicatorFinder = find.byType(OnboardingSlideIndicator);
      expect(sliderIndicatorFinder, findsOneWidget);

      final animatedContainer =
          tester.widget(find.byType(AnimatedContainer)) as AnimatedContainer;

      expect(animatedContainer.constraints?.maxHeight, AppSize.s8);
    });

    testWidgets('should build indicator color properly', (tester) async {
      await tester.pumpWidget(buildWidgetForTesting(false));

      final sliderIndicatorFinder = find.byType(OnboardingSlideIndicator);
      expect(sliderIndicatorFinder, findsOneWidget);

      final animatedContainer =
          tester.widget(find.byType(AnimatedContainer)) as AnimatedContainer;
      expect(animatedContainer.decoration, isNotNull);

      final boxDecoration = animatedContainer.decoration as BoxDecoration;
      expect(boxDecoration.color, AppColors.grey1);
    });
  });
}
