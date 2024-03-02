import 'package:flutter/widgets.dart';
import 'package:jime_compendium/config/config.dart';
import 'package:widget_driver/widget_driver.dart';

import '../domain/models/slider_data.dart';

part 'onboarding_view_driver.g.dart';

@GenerateTestDriver()
class OnboardingViewDriver extends WidgetDriver {
  late PageController _pageController;
  late int _pageIndex;

  OnboardingViewDriver({PageController? pageController}) {
    _pageController = pageController ?? PageController(initialPage: 0);
    _pageIndex = 0;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @TestDriverDefaultValue(_TestDriverPageController())
  PageController get pageController => _pageController;

  @TestDriverDefaultValue(1)
  int get pageIndex => _pageIndex;

  @TestDriverDefaultValue()
  void setPageIndex(int index) {
    _pageIndex = index;
    notifyWidget();
  }

  @TestDriverDefaultValue([
    SliderData('title 1', 'subtitle', AppImageAssets.firstOnboarding),
    SliderData('title 2', 'subtitle', AppImageAssets.firstOnboarding),
    SliderData('title 3', 'subtitle', AppImageAssets.firstOnboarding),
    SliderData('title 4', 'subtitle', AppImageAssets.firstOnboarding)
  ])
  List<SliderData> get sliderData => [
        _firstOnboardingSlide(),
        _secondOnboardingSlide(),
        _thirdOnboardingSlide(),
        _fourthOnboardingSlide(),
      ];

  @TestDriverDefaultValue(4)
  int get pageCount => sliderData.length;

  @TestDriverDefaultValue(true)
  bool isIndicatorActive(int index) => index == pageIndex;

  @TestDriverDefaultValue(SliderData('title4', 'subtitle4', 'imagePath4'))
  SliderData _fourthOnboardingSlide() => const SliderData(
        AppStrings.fourthOnboardingTitle,
        AppStrings.fourthOnboardingSubtitle,
        AppImageAssets.fourthOnboarding,
      );

  @TestDriverDefaultValue(SliderData('title3', 'subtitle3', 'imagePath3'))
  SliderData _thirdOnboardingSlide() => const SliderData(
        AppStrings.thirdOnboardingTitle,
        AppStrings.thirdOnboardingSubtitle,
        AppImageAssets.thirdOnboarding,
      );

  @TestDriverDefaultValue(SliderData('title2', 'subtitle2', 'imagePath2'))
  SliderData _secondOnboardingSlide() => const SliderData(
        AppStrings.secondOnboardingTitle,
        AppStrings.secondOnboardingSubtitle,
        AppImageAssets.secondOnboarding,
      );

  @TestDriverDefaultValue(SliderData('title1', 'subtitle1', 'imagePath1'))
  SliderData _firstOnboardingSlide() => const SliderData(
        AppStrings.firstOnboardingTitle,
        AppStrings.firstOnboardingSubtitle,
        AppImageAssets.firstOnboarding,
      );
}

class _TestDriverPageController extends EmptyDefault implements PageController {
  @override
  get initialPage => 0;

  @override
  ScrollPosition createScrollPosition(ScrollPhysics physics, ScrollContext context, ScrollPosition? oldPosition) {
    return ScrollPositionWithSingleContext(physics: const ScrollPhysics(), context: context);
  }

  @override
  const _TestDriverPageController();

  @override
  double get viewportFraction => 1.0;
}
