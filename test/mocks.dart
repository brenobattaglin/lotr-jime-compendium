import 'package:flutter/widgets.dart';
import 'package:jime_compendium/features/onboarding/onboarding.dart';
import 'package:widget_driver_test/widget_driver_test.dart';
import 'package:mocktail/mocktail.dart';

class MockOnboardingViewDriver extends MockDriver
    implements OnboardingViewDriver {}

class MockPageController extends Mock implements PageController {}
