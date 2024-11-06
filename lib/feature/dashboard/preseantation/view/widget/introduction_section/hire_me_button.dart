import 'package:flutter/material.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';

import '../../../../../../core/shared_widget/custom_elevated_btn.dart';
import '../../../../../../core/shared_widget/global_text.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/app_text.dart';

class HireMeButton extends StatelessWidget {
  const HireMeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        btnColor: AppSharedColors.accentOrange,
        width: 0.1.w,
        height: 0.07.h,
        borderRadius: BorderRadius.circular(5),
        onPress: () {},
        child: const GText(content: AppText.hireMe, fontSize: 21));
  }
}
