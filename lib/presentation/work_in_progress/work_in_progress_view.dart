import 'package:flutter/material.dart';
import 'package:jime_compendium/config/config.dart';
import 'package:lottie/lottie.dart';

class WorkInProgressView extends StatelessWidget {
  const WorkInProgressView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.wipTitle,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Lottie.asset(
              AppLottieAssets.castle,
              width: AppLottieAssetSize.large,
              height: AppLottieAssetSize.large,
            ),
            Text(
              AppStrings.wipMessage,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
}
