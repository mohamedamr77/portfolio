import 'package:flutter/material.dart';
import 'package:portfolioapp/core/utils/size_config.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/introduction_section/profile_image.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/introduction_section/social_icons.dart';

class ImageAndSocialIcon extends StatelessWidget {
  const ImageAndSocialIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ProfileImage(),
        Visibility(
          visible: MediaQuery.sizeOf(context).width >= SizeConfig.desktopSize,
          child: const SizedBox(
            height: 40,
          ),
        ),
        const SocialIcons(),
      ],
    );
  }
}
