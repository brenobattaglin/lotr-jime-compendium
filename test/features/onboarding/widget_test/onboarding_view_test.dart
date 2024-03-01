import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jime_compendium/features/onboarding/onboarding.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers.dart';
import '../../../mocks.dart';

void main() {
  late MockPageController pageController;
  late MockOnboardingViewDriver driver;

  setUp(() {
    pageController = MockPageController();
    driver = MockOnboardingViewDriver();
    when(() => driver.pageController).thenReturn(pageController);
  });

  tearDown(() {
    driver.dispose();
  });

  Widget buildWidgetForTesting() => buildTestApp(OnboardingView());

  testWidgets('should build slide content', (tester) async {
    await tester.pumpWidget(buildWidgetForTesting());
    await tester.pump();

    expect(find.byKey(const Key('onboarding_content')), findsOneWidget);
    expect(find.byType(PageView), findsOneWidget);
    expect(find.byType(OnboardingSlideContent), findsOneWidget);
  });

  testWidgets('should build slide indicator', (tester) async {
    await tester.pumpWidget(buildWidgetForTesting());
    await tester.pump();

    expect(find.byKey(const Key('onboarding_slide_indicator')), findsOneWidget);
    expect(find.byType(OnboardingSlideIndicator), findsNWidgets(4));
  });
}
