import 'package:flutter/material.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_form_field.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_with_desc.dart';
import 'package:portfolioapp/core/shared_widget/global_text.dart';
import 'package:portfolioapp/core/utils/app_color.dart';
import 'package:portfolioapp/core/utils/app_text.dart';

import 'custom_title_with_text_form_field.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTitleWithDescription(
            title: "${AppText.contact} Me ",
            description: AppText.descriptionContact),
        const SizedBox(
          height: 80,
        ),
        const CustomTitleWithTextFormField(
          title: "Name",
          textFormField: CustomTextField(hintText: "Enter Your Name"),
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomTitleWithTextFormField(
          title: "Phone",
          textFormField: CustomTextField(hintText: "Enter Your Phone"),
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomTitleWithTextFormField(
          title: "Message",
          textFormField: CustomTextField(
              minLine: 3, maxLine: 8, hintText: "Enter Your Message"),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppSharedColors.accentOrange),
            onPressed: () {},
            child:
                const GText(content: "${AppText.contact} Me ", fontSize: 19)),
      ],
    );
  }
}
