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

  Widget _buildBackground(BuildContext context) => ShaderMask(
        shaderCallback: (bound) => LinearGradient(
          end: FractionalOffset.topCenter,
          begin: FractionalOffset.bottomCenter,
          colors: _backgroundShaderColors,
        ).createShader(bound),
        blendMode: BlendMode.colorBurn,
        child: _backgroundImage,
      );

  Widget get _backgroundImage => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_sliderObject.imagePath),
            fit: BoxFit.cover,
          ),
        ),
      );

  List<Color> get _backgroundShaderColors => [
        Colors.black.withOpacity(1),
        Colors.black.withOpacity(0.8),
        Colors.black.withOpacity(0.3),
        Colors.black.withOpacity(0.2),
        Colors.black.withOpacity(0),
        Colors.black.withOpacity(0.7),
        Colors.black.withOpacity(1),
      ];

  Widget _buildContent(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildTitle(context),
          _buildSubtitle(context),
          _buildSkipButton(context),
        ],
      );

  Widget _buildTitle(BuildContext context) => Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Text(
          _sliderObject.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      );

  Widget _buildSkipButton(BuildContext context) => Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
          onPressed: () => Navigator.pushReplacementNamed(
              context, Routes.workInProgressRoute),
          child: Text(
            AppStrings.skip,
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      );

  Widget _buildSubtitle(BuildContext context) => Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Text(
          _sliderObject.subtitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      );
}
