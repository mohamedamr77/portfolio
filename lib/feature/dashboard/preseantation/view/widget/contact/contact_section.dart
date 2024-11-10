import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_form_field.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_with_desc.dart';
import 'package:portfolioapp/core/shared_widget/global_text.dart';
import 'package:portfolioapp/core/utils/app_color.dart';
import 'package:portfolioapp/core/utils/app_text.dart';
import 'package:portfolioapp/core/utils/send_message_service.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_title_with_text_form_field.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  _ContactSectionState createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final TextEditingController _nameController = TextEditingController();
  // final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();



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
        CustomTitleWithTextFormField(
          title: "Name",
          textFormField: CustomTextField(
            controller: _nameController,
            hintText: "Enter Your Name",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // CustomTitleWithTextFormField(
        //   title: "",
        //   textFormField: CustomTextField(
        //     controller: _emailController,
        //     hintText: "Enter Your Email",
        //   ),
        // ),
        const SizedBox(
          height: 20,
        ),
        CustomTitleWithTextFormField(
          title: "Message",
          textFormField: CustomTextField(
            controller: _messageController,
            minLine: 3,
            maxLine: 8,
            hintText: "Enter Your Message",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppSharedColors.accentOrange),
            onPressed: () {
              SendMessageService.launchWhatsApp(
                name: _nameController.text,
                // phone: _phoneController.text,
                message: _messageController.text,
              );


              // SendMessageService.sendSMSMessage(
              //   phone: '+201157280800',
              //   message: 'Name: ${_nameController.text}\nMessage: ${_messageController.text}',
              // );
            },
            child:
            const GText(content: "${AppText.contact} Me ", fontSize: 19)),
      ],
    );
  }
}