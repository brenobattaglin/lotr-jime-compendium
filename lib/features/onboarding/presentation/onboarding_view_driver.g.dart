// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_view_driver.dart';

// **************************************************************************
// WidgetDriverGenerator
// **************************************************************************

// coverage:ignore-file

// This file was generated with widget_driver_generator version "1.0.3"

class _$TestOnboardingViewDriver extends TestDriver implements OnboardingViewDriver {
  @override
  PageController get pageController => _TestDriverPageController();

  @override
  int get pageIndex => 1;

  @override
  List<SliderData> get sliderData => [
        SliderData('title 1', 'subtitle', AppImageAssets.firstOnboarding),
        SliderData('title 2', 'subtitle', AppImageAssets.firstOnboarding),
        SliderData('title 3', 'subtitle', AppImageAssets.firstOnboarding),
        SliderData('title 4', 'subtitle', AppImageAssets.firstOnboarding)
      ];

  @override
  int get pageCount => 4;

  @override
  void setPageIndex(int index) {}

  @override
  bool isIndicatorActive(int index) {
    return true;
  }

  @override
  SliderData _fourthOnboardingSlide() {
    return SliderData('title4', 'subtitle4', 'imagePath4');
  }

  @override
  SliderData _thirdOnboardingSlide() {
    return SliderData('title3', 'subtitle3', 'imagePath3');
  }

  @override
  SliderData _secondOnboardingSlide() {
    return SliderData('title2', 'subtitle2', 'imagePath2');
  }

  @override
  SliderData _firstOnboardingSlide() {
    return SliderData('title1', 'subtitle1', 'imagePath1');
  }
}

class $OnboardingViewDriverProvider extends WidgetDriverProvider<OnboardingViewDriver> {
  @override
  OnboardingViewDriver buildDriver() {
    return OnboardingViewDriver();
  }

  @override
  OnboardingViewDriver buildTestDriver() {
    return _$TestOnboardingViewDriver();
  }
}
