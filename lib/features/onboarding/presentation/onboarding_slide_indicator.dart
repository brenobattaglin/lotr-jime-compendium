import 'package:flutter/material.dart';
import 'package:jime_compendium/config/config.dart';

class OnboardingSlideIndicator extends StatelessWidget {
  final bool _isActive;

  const OnboardingSlideIndicator({
    super.key,
    required bool isActive,
  }) : _isActive = isActive;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: AppDuration.d300),
            height: _height,
            width: AppSize.s8,
            decoration: _buildBoxDecoration(),
          ),
        ],
      );

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
        color: _boxColor,
        borderRadius: const BorderRadius.vertical(),
      );

  Color get _boxColor => _isActive ? AppColors.primary : AppColors.grey1;

  double get _height => _isActive ? AppSize.s16 : AppSize.s8;
}
