import 'package:flutter/material.dart';

import '../navigation/navigation_manager.dart';


class SharedFunctions {
  // static NetworkInfoImpl networkInfo = NetworkInfoImpl.getInstance();

  // static Future<void> checkInternetConnection() async {
  //   if (await networkInfo.isConnected == false) {
  //     throw ServerException(0, 'No internet connection');
  //   }
  // }

  static Map<String, String>? getReqHeaders() {
    return null;

    // final userToken = HiveStorage().getKey(key: AppStrings.token);
    // if (userToken.isRight()) {
    //   final token = userToken.getOrElse(() => '');
    //   return {
    //     "Content-Type": "application/json",
    //     "Accept-Language": currentLocale(),
    //     'Authorization': 'Bearer $token',
    //   };
    // } else {
    //   return {"Content-Type": "application/json"};
    // }
  }

  static bool isArabicLocale() {
    Locale currentLocale =
        Localizations.localeOf(NavigationManager.currentContext!);
    return currentLocale.languageCode == 'ar';
  }

  static String currentLocale() {
    Locale currentLocale =
        Localizations.localeOf(NavigationManager.currentContext!);
    return currentLocale.languageCode;
  }

  static Alignment currentAlign() {
    return isArabicLocale() ? Alignment.centerRight : Alignment.centerLeft;
  }

  static TextAlign currentTextAlign() {
    return isArabicLocale() ? TextAlign.right : TextAlign.left;
  }

  static String determineFontFamily(String content) {
    if (SharedFunctions.isArabicLocale() && !containsNumber(content)) {
      return 'Poppins';
    } else if (isNumeric(content)) {
      return 'Poppins';
    } else {
      return 'Poppins';
    }
  }

  static bool containsNumber(String content) {
    return RegExp(r'\d').hasMatch(content);
  }

  static bool isNumeric(String content) {
    try {
      return RegExp(r'^-?\d*\.?\d+$').hasMatch(content);
    } catch (e) {
      return false;
    }
  }
}

class StatusInfo {
  final String text;
  final Color color;

  StatusInfo({required this.text, required this.color});
}
