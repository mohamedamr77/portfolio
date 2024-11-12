import 'package:flutter/material.dart';
import 'package:portfolioapp/core/utils/send_message_service.dart';

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
        width:100,
        height: 40,
        borderRadius: BorderRadius.circular(5),
        onPress: SendMessageService.sendEmail,
        child: const FittedBox(
            fit: BoxFit.scaleDown,
            child: GText(content: AppText.hireMe, fontSize: 21)));
  }
}
