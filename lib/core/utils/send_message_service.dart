import 'package:flutter/foundation.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:portfolioapp/core/utils/social_service.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
class SendMessageService{


  static void launchWhatsApp({required String name, required String message}) async {
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


  static void sendEmailFromApp({required String name, required String email, required String message}) async {
    String username = 'moamr947@gmail.com';
    String password = 'Mm01157280800#*';

    final smtpServer = gmail(username, password);

    final emailMessage = Message()
      ..from = Address(username, 'Your Name')
      ..recipients.add('moamr947@gmail.com')
      ..subject = 'Hire Me'
      ..text = 'Name: $name\nEmail: $email\nMessage: $message';

    try {
      final sendReport = await send(emailMessage, smtpServer);
      print('Message sent: $sendReport');
    } on MailerException catch (e) {
      print('Message not sent. \n$e');
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


/*
  static void launchWhatsApp({required String name, required String phone, required String message}) async {
    final String url = 'https://api.whatsapp.com/send?phone=${SocialService.phoneNumber}&text=Name:%20$name%0AMessage:%20$message';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

 */