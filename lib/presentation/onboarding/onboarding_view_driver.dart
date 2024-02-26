import 'package:flutter/widgets.dart';
import 'package:jime_compendium/domain/models/slider_data.dart';
import 'package:widget_driver/widget_driver.dart';
import '../../domain/models/models.dart';

import '../../config/config.dart';

part 'onboarding_view_driver.g.dart';

@GenerateTestDriver()
class OnboardingViewDriver extends WidgetDriver {
  late PageController _pageController;
  late int _pageIndex;

  @override
  void didUpdateBuildContext(BuildContext context) {
    _pageController = PageController(initialPage: 0);
    _pageIndex = 0;
    super.didUpdateBuildContext(context);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  PageController pageController() => _pageController;

  @TestDriverDefaultValue(1)
  int get pageIndex => _pageIndex;

  @TestDriverDefaultValue()
  void setPageIndex(int index) {
    _pageIndex = index;
    notifyWidget();
  }

  @TestDriverDefaultValue([SliderData('title', 'subtitle', 'imagePath')])
  List<SliderData> get sliderData => [
        _firstOnboardingSlide(),
        _secondOnboardingSlide(),
        _thirdOnboardingSlide(),
        _fourthOnboardingSlide(),
      ];

  @TestDriverDefaultValue(5)
  int get sliderDataLength => sliderData.length;

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
