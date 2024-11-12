import 'package:flutter/material.dart';

import '../../../../../../core/shared_widget/global_text.dart';
import '../../../../../../core/utils/size_config.dart';

class CustomTitleWithTextFormField extends StatelessWidget {
  const CustomTitleWithTextFormField(
      {super.key, required this.title, required this.textFormField});
  final String title;
  final Widget textFormField;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:
      MediaQuery.sizeOf(context).width <SizeConfig.mobileSize?
      MediaQuery.sizeOf(context).width *  0.9 :
      MediaQuery.sizeOf(context).width * 0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GText(content: title, fontSize: 21),
          const SizedBox(
            height: 8,
          ),
          textFormField,
        ],
      ),
    );
  }
}
