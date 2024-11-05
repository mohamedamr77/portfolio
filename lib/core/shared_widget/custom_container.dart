import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final Color? color;
  final DecorationImage? backgroundImage;
  final Border? border;
  final Widget? child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Alignment? alignment;
  final VoidCallback? onTap;

  const CustomContainer(
      {super.key,
      this.width,
      this.height,
      this.color,
      this.backgroundImage,
      this.radius,
      this.border,
      this.child,
      this.padding,
      this.margin,
      this.alignment,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        alignment: alignment,
        decoration: BoxDecoration(
          color: color,
          image: backgroundImage,
          borderRadius: BorderRadius.circular(radius ?? 0),
          border: border,
        ),
        child: child,
      ),
    );
  }
}
