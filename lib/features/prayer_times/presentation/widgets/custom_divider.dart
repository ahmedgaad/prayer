import 'package:flutter/material.dart';
import 'package:prayer_timing/core/utils/color_manager.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 5,
      endIndent: 12.0,
      thickness: 30.0,
      height: 20.0,
      color: ColorManager.color1,
    );
  }
}