import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolioapp/core/utils/social_service.dart';
import '../../../../../../core/shared_functions/launch_url.dart';
import '../../../../../../core/utils/app_images.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            launchCustomUrl(url: SocialService.facebook , context: context );
          },
          child: SvgPicture.asset(
            AppImages.facebook,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        GestureDetector(
          onTap: (){
            launchCustomUrl(url: SocialService.github , context: context );
          },
          child: SvgPicture.asset(
            AppImages.github,
            width: 40,
            height: 40,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        GestureDetector(
          onTap: (){
            launchCustomUrl(url: SocialService.instagram , context: context );
          },
          child: SvgPicture.asset(
            AppImages.instagram,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        GestureDetector(
          onTap: (){
            launchCustomUrl(url: SocialService.linkedIn , context: context );
          },
          child: SvgPicture.asset(
            AppImages.linkedIn,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
