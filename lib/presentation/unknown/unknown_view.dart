import 'package:flutter/material.dart';
import 'package:jime_compendium/config/config.dart';
import 'package:lottie/lottie.dart';

class UnknownView extends StatelessWidget {
  const UnknownView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: AppPadding.p12, left: AppPadding.p12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppStrings.noPageFoundTitle,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: AppPadding.p12, bottom: AppPadding.p12),
                child: Lottie.asset(
                  AppLottieAssets.warning,
                  width: AppLottieAssetSize.medium,
                  height: AppLottieAssetSize.medium,
                ),
              ),
              Text(
                AppStrings.noPageFoundMessage,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
}
