import 'package:flutter/material.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';

import 'image_and_soical_icon.dart';
import 'introduction_content.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key,});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 0.11.w, right: 0.06.w, top: 0.06.h, bottom: 0.04.h),
      child:  Row(
        children: [
          IntroductionContent(),
          ImageAndSocialIcon(),
        ],
      ),
    );
  }
}
