import 'package:flutter/material.dart';
import 'package:widget_driver/widget_driver.dart';

import '../../config/config.dart';
import 'onboarding.dart';

class OnboardingView extends DrivableWidget<OnboardingViewDriver> {
  OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: driver.pageController(),
                onPageChanged: (index) {
                  driver.setPageIndex(index);
                },
                itemCount: driver.sliderData.length,
                itemBuilder: (context, index) => OnboardingSlideContent(
                  sliderObject: driver.sliderData[index],
                ),
              ),
            ),
            Row(
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
            )
          ],
        ),
      ),
    );
  }

  @override
  WidgetDriverProvider<OnboardingViewDriver> get driverProvider => $OnboardingViewDriverProvider();
}
