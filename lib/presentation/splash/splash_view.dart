import 'dart:async';

import 'package:fci/presentation/resources/app_router.dart';
import 'package:fci/presentation/resources/assets_manager.dart';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:fci/presentation/resources/constants_manager.dart';
import 'package:fci/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() {
    GoRouter.of(context).pushReplacement(AppRouter.kOnBoardingView);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorManager.firstGradient, ColorManager.secondGradient],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
            child: Stack(children: [
          SvgPicture.asset(ImageAssets.splashLogo),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.yourCollegeText,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'IN',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'YOUR POCKET',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ))
        ])),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
