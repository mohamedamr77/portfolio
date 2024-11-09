import 'package:flutter/material.dart';

class SpaceBetweenSection extends StatelessWidget {
  const SpaceBetweenSection({super.key, this.height, this.width});

  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height ??80,
      width: width ??50,
    );
  }
}