import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/utils/app_images.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AppImages.facebook,
          color: Theme.of(context).primaryColor,
        ),
        const SizedBox(
          width: 25,
        ),
        SvgPicture.asset(
          AppImages.twitter,
          color: Theme.of(context).primaryColor,
        ),
        const SizedBox(
          width: 25,
        ),
        SvgPicture.asset(
          AppImages.instagram,
          color: Theme.of(context).primaryColor,
        ),
        const SizedBox(
          width: 25,
        ),
        SvgPicture.asset(
          AppImages.linkedIn,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
