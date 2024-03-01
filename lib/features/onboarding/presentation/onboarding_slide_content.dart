import 'package:flutter/material.dart';
import 'package:jime_compendium/config/config.dart';
import 'package:jime_compendium/features/onboarding/onboarding.dart';

class OnboardingSlideContent extends StatelessWidget {
  final SliderData _sliderObject;

  const OnboardingSlideContent({
    super.key,
    required SliderData sliderObject,
  }) : _sliderObject = sliderObject;

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
        return LinearGradient(
            end: FractionalOffset.topCenter,
            begin: FractionalOffset.bottomCenter,
            colors: [
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
        onPressed: () =>
            Navigator.pushReplacementNamed(context, Routes.workInProgressRoute),
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
