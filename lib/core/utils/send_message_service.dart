import 'package:flutter/foundation.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:url_launcher/url_launcher.dart';

class SendMessageService{

  static String phoneNumber = '+201212588180'; // Replace with

  static void launchWhatsApp({required String name, required String phone, required String message}) async {
    final String url = 'https://api.whatsapp.com/send?phone=$phoneNumber&text=Name:%20$name%0AMessage:%20$message';
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
}