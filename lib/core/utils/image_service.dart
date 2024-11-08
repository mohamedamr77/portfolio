import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

imageService({required String image}) {
  return image.contains(".svg")
      ? SvgPicture.asset(image, width: 72, height: 82)
      : Image.asset(
          image,
          width: 72,
          height: 82,
        );
}
