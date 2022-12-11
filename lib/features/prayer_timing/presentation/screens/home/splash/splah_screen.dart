import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prayer_timing/core/managers/color_manager.dart';
import 'package:prayer_timing/core/managers/constants_manager.dart';
import 'package:prayer_timing/core/managers/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(
      const Duration(
        seconds: AppConstantas.splashDelay,
      ),
      _goNext(),
    );
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.home);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorManager.color1,
            ColorManager.color2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
