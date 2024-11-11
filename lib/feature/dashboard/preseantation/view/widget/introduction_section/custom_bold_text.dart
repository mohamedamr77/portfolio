import 'package:flutter/material.dart';

import '../../../../../../core/shared_widget/global_text.dart';
import '../../../../../../core/utils/size_config.dart';

class CustomBoldText extends StatelessWidget {
  const CustomBoldText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: GText(
          content: text,
          fontSize: MediaQuery.sizeOf(context).width > SizeConfig.tabletSize
              ? 100
              : 60,
          fontWeight: FontWeight.w700,
        ));
  }
}
