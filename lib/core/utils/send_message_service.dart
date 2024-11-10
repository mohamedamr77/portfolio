import 'package:flutter/foundation.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:portfolioapp/core/utils/social_service.dart';
import 'package:url_launcher/url_launcher.dart';

class SendMessageService{


  static void launchWhatsApp({required String name, required String phone, required String message}) async {
    final String url = 'https://api.whatsapp.com/send?phone=${SocialService.phoneNumber}&text=Name:%20$name%0AMessage:%20$message';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

 static void sendSMSMessage({required String phone, required String message}) async {
    try {
      String result = await sendSMS(
        message: message,
        recipients: [phone],
      );
      debugPrint(result);
    } catch (error) {
      debugPrint(error.toString());
    }
  }

 static void sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: SocialService.email,
      query: 'subject=Hire Me&body=Hello, I am interested in hiring you.',
    );

    if (await canLaunch(emailUri.toString())) {
      await launch(emailUri.toString());
    } else {
      throw 'Could not launch $emailUri';
    }
  }
}