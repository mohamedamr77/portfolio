import 'package:flutter/material.dart';

import '../../../../../../core/shared_widget/global_text.dart';
import '../../../../../../core/utils/app_color.dart';

class CustomTitleWithSlider extends StatelessWidget {
  const CustomTitleWithSlider(
      {super.key, required this.title, required this.value});
  final String title;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: FittedBox(
            fit: BoxFit.scaleDown ,
            child: GText(
              content: title,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Slider(
          min: 20,
          max: 100,
          value: value,
          onChanged: (value) {},
          thumbColor: AppSharedColors.mediumGray,
          activeColor: AppSharedColors.accentOrange,
          inactiveColor: AppSharedColors.mediumGray,
        )
      ],
    );
  }
}
