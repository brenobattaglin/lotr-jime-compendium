import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../domain/models/models.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemCount: sliderData.length,
                itemBuilder: (context, index) => OnboardingContent(
                  sliderObject: sliderData[index],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  sliderData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: _Indicator(
                      isActive: index == _pageIndex,
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

  List<SliderObject> get sliderData => [
        SliderObject(AppStrings.onboardingTitle1, AppStrings.onboardingSubtitle1, AppImageAssets.onboarding1),
        SliderObject(AppStrings.onboardingTitle2, AppStrings.onboardingSubtitle2, AppImageAssets.onboarding2),
        SliderObject(AppStrings.onboardingTitle3, AppStrings.onboardingSubtitle3, AppImageAssets.onboarding3),
        SliderObject(AppStrings.onboardingTitle4, AppStrings.onboardingSubtitle4, AppImageAssets.onboarding4),
      ];
}

class _Indicator extends StatelessWidget {
  const _Indicator({
    super.key,
    required bool isActive,
  }) : _isActive = isActive;

  final bool _isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: AppDuration.d300),
          height: _isActive ? AppSize.s16 : AppSize.s8,
          width: AppSize.s8,
          decoration: BoxDecoration(
            color: _isActive ? AppColors.primary : AppColors.grey1,
            borderRadius: const BorderRadius.vertical(),
          ),
        ),
      ],
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final SliderObject _sliderObject;

  const OnboardingContent({
    Key? key,
    required SliderObject sliderObject,
  })  : _sliderObject = sliderObject,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBackground(context),
        _buildContent(context),
      ],
    );
  }

  Widget _buildBackground(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bound) {
        return LinearGradient(end: FractionalOffset.topCenter, begin: FractionalOffset.bottomCenter, colors: [
          Colors.black.withOpacity(1),
          Colors.black.withOpacity(0.8),
          Colors.black.withOpacity(0.3),
          Colors.black.withOpacity(0.2),
          Colors.black.withOpacity(0),
          Colors.black.withOpacity(0.7),
          Colors.black.withOpacity(1),
        ]).createShader(bound);
      },
      blendMode: BlendMode.colorBurn,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_sliderObject.imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildTitle(context),
        _buildSubtitle(context),
        _buildSkipButton(context),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: Text(
        _sliderObject.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }

  Widget _buildSkipButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: TextButton(
        onPressed: null,
        child: Text(
          AppStrings.skip,
          textAlign: TextAlign.end,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: Text(
        _sliderObject.subtitle,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
