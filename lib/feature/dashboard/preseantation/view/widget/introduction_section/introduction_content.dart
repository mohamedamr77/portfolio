import 'package:flutter/material.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/utils/size_config.dart';
import '../../../../../../core/shared_widget/global_text.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/app_text.dart';
import 'custom_bold_text.dart';
import 'hire_me_button.dart';

class IntroductionContent extends StatelessWidget {
  const IntroductionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
      MediaQuery.sizeOf(context).width <SizeConfig.mobileSize?
      CrossAxisAlignment.center :
      CrossAxisAlignment.start,
      children: [
        GText(
          color: Theme.of(context).primaryColor,
          content: AppText.hiIam,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(
          height: 6,
        ),
        const GText(
          color: AppSharedColors.accentOrange,
          content: AppText.name,
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
        const CustomBoldText(
          text: AppText.flutter,
        ),
        Padding(
          padding:
          MediaQuery.sizeOf(context).width <SizeConfig.mobileSize?
          EdgeInsets.zero:EdgeInsets.only(left: 0.14.w),
          child: const CustomBoldText(text: AppText.developer),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.01,
        ),
        const HireMeButton(),
      ],
    );
  }
}
