import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// A circular loader widget with customizable foreground and background colors.
class CustomLoaderAnimation extends StatelessWidget {
  const CustomLoaderAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Lottie.asset(AssetImages.defaultLoaderAnimation,
            height: 200, width: 200));
  }
}
