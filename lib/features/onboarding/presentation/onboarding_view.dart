import 'package:flutter/material.dart';
import 'package:jime_compendium/config/config.dart';
import 'package:widget_driver/widget_driver.dart';

import 'onboarding_slide_content.dart';
import 'onboarding_view_driver.dart';
import 'onboarding_view_indicator.dart';

class OnboardingView extends DrivableWidget<OnboardingViewDriver> {
  OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildContent(),
            buildSlider(),
          ],
        ),
      ),
    );
  }

  Widget buildContent() => Expanded(
        child: PageView.builder(
          controller: driver.pageController,
          onPageChanged: (index) {
            driver.setPageIndex(index);
          },
          itemCount: driver.sliderData.length,
          itemBuilder: (context, index) => OnboardingSlideContent(
            sliderObject: driver.sliderData[index],
          ),
        ),
      );

  Widget buildSlider() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            driver.sliderData.length,
            (index) => Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: OnboardingSlideIndicator(
                isActive: index == driver.pageIndex,
              ),
            ),
          ),
        ],
      );

  @override
  WidgetDriverProvider<OnboardingViewDriver> get driverProvider =>
      $OnboardingViewDriverProvider();
}
