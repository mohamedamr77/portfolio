import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BuildShimmerShape extends StatelessWidget {
  const BuildShimmerShape(
      {super.key,  this.width, required this.height, this.margin});
  final double height;
  final double? width;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500]!,
      highlightColor: Colors.grey[300]!,
      direction: ShimmerDirection.ltr, // Left to right shimmer
      child: Container(
        margin: margin ?? EdgeInsets.zero,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey[500],
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}