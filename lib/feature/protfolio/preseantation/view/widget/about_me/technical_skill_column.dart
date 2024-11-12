
import 'package:flutter/material.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';

import 'custom_text_with_slider.dart';

class TechnicalSkillColumn extends StatelessWidget {
  const TechnicalSkillColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.02.w),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTitleWithSlider(
            title: "State Management (provider , Cubit)",
            value: 95,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTitleWithSlider(
            title: "Git & GitHub ,Firebase",
            value: 96,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTitleWithSlider(
            title:"Dart , Responsive Design",
            value: 100,
          ),
        ],
      ),
    );
  }
}