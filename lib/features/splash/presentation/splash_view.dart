import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jime_compendium/config/config.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) => _buildScaffold();

  Widget _buildScaffold() => const Scaffold(
        backgroundColor: AppColors.black,
        body: Center(
          child: Image(
            image: AssetImage(AppImageAssets.splashLogo),
          ),
        ),
      );

  _startDelay() {
    _timer = Timer(const Duration(seconds: 2), _pushToWipView);
  }

  _pushToWipView() =>
      Navigator.pushReplacementNamed(context, Routes.onboardingRoute);
}
