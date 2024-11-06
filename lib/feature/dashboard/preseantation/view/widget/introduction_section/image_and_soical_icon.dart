import 'package:flutter/material.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/introduction_section/profile_image.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/introduction_section/social_icons.dart';


class ImageAndSocialIcon extends StatelessWidget {
  const ImageAndSocialIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ProfileImage(),
        SizedBox(
          height: 40,
        ),
        SocialIcons(),
      ],
    );
  }
}
