import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../shared_widget/toast_utils.dart';


Future<void> launchCustomUrl(
    {required String url, required BuildContext context}) async {
  final Uri parsedUrl = Uri.parse(url);
  if (await canLaunchUrl(parsedUrl)) {
    !await launchUrl(parsedUrl);
  } else {
    ToastUtils.showToast(message: "The Url Is Not Valied");
  }
}
