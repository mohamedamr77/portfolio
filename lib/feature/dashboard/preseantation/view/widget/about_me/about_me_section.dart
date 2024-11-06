import 'package:flutter/material.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_with_desc.dart';
import 'package:portfolioapp/core/utils/app_text.dart';
import 'package:portfolioapp/feature/dashboard/preseantation/view/widget/about_me/skill_column.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
              alignment: Alignment.center,
              child: CustomTitleWithDescription(
                  title: AppText.aboutMe, description: AppText.description2)),
          const SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(left: 0.02.w),
                child: const SkillColumn(),
              )),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.02,
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(right: 0.02.w),
                child: const SkillColumn(),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
