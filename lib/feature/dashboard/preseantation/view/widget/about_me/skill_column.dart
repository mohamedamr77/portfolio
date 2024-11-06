import 'package:flutter/material.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';

import '../../../../../../core/utils/app_text.dart';
import 'custom_text_with_slider.dart';

class SkillColumn extends StatelessWidget {
  const SkillColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.02.w),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTitleWithSlider(
            title: AppText.flutter,
            value: 90,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTitleWithSlider(
            title: AppText.flutter,
            value: 90,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTitleWithSlider(
            title: AppText.flutter,
            value: 90,
          ),
        ],
      ),
    );
  }
}
