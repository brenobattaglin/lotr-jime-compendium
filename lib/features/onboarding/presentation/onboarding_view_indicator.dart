import 'package:flutter/material.dart';
import 'package:jime_compendium/config/config.dart';

class OnboardingSlideIndicator extends StatelessWidget {
  const OnboardingSlideIndicator({
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
