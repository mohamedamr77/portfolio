import 'package:flutter/material.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPress;
  final Widget child;
  final Color? btnColor;
  final double? width;
  final double? height;
  final BorderSide? borderSide;
  final BorderRadiusGeometry? borderRadius;

  const CustomElevatedButton(
      {super.key,
      required this.onPress,
      required this.child,
      this.btnColor,
      this.width,
      this.height,
      this.borderSide,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? 0.90.w, height ?? 0.07.h),
        backgroundColor: btnColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.zero,
          side: borderSide ?? BorderSide.none,
        ),
      ),
      onPressed: onPress,
      child: child,
    );
  }
}
