import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_form_field.dart';
import 'package:portfolioapp/core/shared_widget/custom_text_with_desc.dart';
import 'package:portfolioapp/core/shared_widget/global_text.dart';
import 'package:portfolioapp/core/utils/app_color.dart';
import 'package:portfolioapp/core/utils/app_text.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_title_with_text_form_field.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  _ContactSectionState createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  void _launchWhatsApp({required String name, required String phone, required String message}) async {
    const String phoneNumber = '+201157280800'; // Replace with your phone number
    final String url = 'https://api.whatsapp.com/send?phone=$phoneNumber&text=Name:%20$name%0APhone:%20$phone%0AMessage:%20$message';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _sendSMS({required String phone, required String message}) async {
    try {
      String result = await sendSMS(
        message: message,
        recipients: [phone],
      );
      print(result);
    } catch (error) {
      print(error);
    }
  }

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
        CustomTitleWithTextFormField(
          title: "Phone",
          textFormField: CustomTextField(
            controller: _phoneController,
            hintText: "Enter Your Phone",
          ),
        ),
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
              // _launchWhatsApp(
              //   name: _nameController.text,
              //   phone: _phoneController.text,
              //   message: _messageController.text,
              // );

              _sendSMS(
                phone: '+201157280800',
                message: 'Name: ${_nameController.text}\nMessage: ${_messageController.text}',
              );
            },
            child:
            const GText(content: "${AppText.contact} Me ", fontSize: 19)),
      ],
    );
  }
}