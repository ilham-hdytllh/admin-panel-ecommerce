import 'package:admin_panel_ecommerce/utils/constants/colors.dart';
import 'package:admin_panel_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerEffect extends StatelessWidget {
  const CustomShimmerEffect(
      {super.key,
      required this.width,
      required this.height,
      this.radius = 15,
      this.color,
      this.isCircle = false,
      this.padding});

  final double width, height, radius;
  final Color? color;
  final bool isCircle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        padding: padding,
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
          color: color ?? (dark ? CustomColors.darkerGrey : CustomColors.white),
          borderRadius: isCircle ? null : BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
