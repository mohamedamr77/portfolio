import 'package:flutter/material.dart';

class AppLightModeColors {
  static const Color primaryTextColor = Color(0xff000000);
  static Color semiTransparentBlack =
      const Color(0xff000000).withOpacity(0.5); // Semi-transparent black
  static Color lightTransparentBlack =
      const Color(0xff000000).withOpacity(0.2); // Light transparent black
  static const Color darkGreenGray = Color(0xff61706F); // Dark Green-Gray
  static const Color lightGrayishWhite =
      Color(0xffff8f8f8); // Light Grayish-White
  static const Color whiteBackground =
      Color(0xffFFFFFF); // Pure White Background
  static const Color steelGray = Color(0xff777A7E); // Steel Gray
  static Color lightBlue =
      const Color(0xff52ADFC).withOpacity(0.25); // Light Blue with Opacity
}

class AppDarkModeColors {
  static const Color primaryTextColor = Color(0xffffffff);
  static const Color scaffoldBackGround = Color(0xff1E1E1E);
  static const Color blackColor = Color(0xff000000);
  static const Color backgroundLightGray =
      Color(0xffFAFAFA); // Very Light Background
  static const Color lightGray = Color(0xffF8F8F8); // Light Gray
  static Color overlayBlack =
      const Color(0xff000000).withOpacity(0.2); // Black Overlay
  static const Color brightBlue = Color(0xff52ADFC); // Bright Blue
  static const Color softPinkBackground =
      Color(0xffFFF8F8); // Soft Pink Background
  static const Color transparentBlack = Color(0xff121212); // Transparent Black
}

class AppSharedColors {
  static const Color accentOrange = Color(0xffFD6F00);
  static const Color charcoalGray = Color(0xff545454);
  static const Color mediumGray = Color(0xffEDECEC);
  static const Color borderGray = Color(0xffE2E2E2);
  static const Color subtleGray = Color(0xffD9D9D9);
  static const Color deepBlack = Color(0xff1E1E1E);
  static const Color darkCharcoal = Color(0xff424242);
  static const Color lightGray = Color(0xffF8F8F8); // Light Gray
  static const Color peachBackground = Color(0xffFFEBDB);
  static const Color neutralGray = Color(0xffAFAFAF);
  static const Color mutedGray = Color(0xff797979);
}

ThemeData darkMode = ThemeData.dark().copyWith(
  buttonTheme: const ButtonThemeData(
    buttonColor: AppSharedColors.accentOrange,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppDarkModeColors.scaffoldBackGround,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppDarkModeColors.scaffoldBackGround,
  ),
  scaffoldBackgroundColor: AppDarkModeColors.scaffoldBackGround,
  primaryColor: AppLightModeColors.whiteBackground,
  textTheme: const TextTheme(
    displayLarge: TextStyle(color: AppDarkModeColors.blackColor),
  ),
);

ThemeData lightMode = ThemeData.light().copyWith(
  buttonTheme: const ButtonThemeData(
    buttonColor: AppSharedColors.accentOrange,
  ),
  appBarTheme: const AppBarTheme(
    color: AppLightModeColors.whiteBackground,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppLightModeColors.whiteBackground,
  ),
  scaffoldBackgroundColor: AppLightModeColors.whiteBackground,
  primaryColor: AppLightModeColors.primaryTextColor,
  textTheme: const TextTheme(
    displayLarge: TextStyle(color: AppLightModeColors.primaryTextColor),
  ),
);

//
// ThemeData lightMode = ThemeData.light().copyWith(
//   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//     backgroundColor: AppLightModeColors.bottomNavigationBarColorLight,
//   ),
//   disabledColor: AppLightModeColors.borderCircleLight,
//   scaffoldBackgroundColor: AppLightModeColors.backgroundOrScaffoldColor,
//   primaryColor: AppLightModeColors.primaryColor,
//   textTheme: const TextTheme(
//     displayLarge: TextStyle(color: AppLightModeColors.primaryTextColor),
//     displayMedium: TextStyle(color: AppLightModeColors.secondaryTextColor),
//     displaySmall: TextStyle(color: AppLightModeColors.tertiaryTextColor),
//   ),
//   dividerColor: AppLightModeColors.grayStrokeLight,
//   cardColor: AppLightModeColors.cardColorLight,
//   appBarTheme: const AppBarTheme(
//       backgroundColor: AppLightModeColors.backgroundOrScaffoldColor),
//   secondaryHeaderColor: AppLightModeColors.secondaryHeaderColorLight,
//   canvasColor: AppLightModeColors.canvasColorLight,
// );

/*
class AppLightModeColors {
  static const Color primaryTextColor = Color(0xff000000);
  static const Color accentOrange = Color(0xffFD6F00); // Same as primaryColor in dark mode
  static Color semiTransparentBlack = const Color(0xff000000).withOpacity(0.5); // Semi-transparent black
  static Color lightTransparentBlack = const Color(0xff000000).withOpacity(0.2); // Light transparent black
  static const Color darkGreenGray = Color(0xff61706F); // Dark Green-Gray
  static const Color lightGrayishWhite = Color(0xffFF8F8F8); // Light Grayish-White
  static const Color whiteBackground = Color(0xffFFFFFF); // Pure White Background
  static const Color steelGray = Color(0xff777A7E); // Steel Gray
  static const Color charcoalGray = Color(0xff545454); // Same as darkGray in dark mode
  static const Color mediumGray = Color(0xffEDECEC); // Same as mediumGray in dark mode
  static const Color borderGray = Color(0xffE2E2E2); // Same as borderGray in dark mode
  static const Color subtleGray = Color(0xffD9D9D9); // Same as subtleGray in dark mode
  static const Color deepBlack = Color(0xff1E1E1E); // Same as deepBlack in dark mode
  static const Color darkCharcoal = Color(0xff424242); // Same as charcoalGray in dark mode
  static Color lightBlue = Color(0xff52ADFC).withOpacity(0.25); // Light Blue with Opacity
  static const Color peachBackground = Color(0xffFFEBDB); // Same as peachBackground in dark mode
  static const Color neutralGray = Color(0xffAFAFAF); // Same as neutralGray in dark mode
  static const Color mutedGray = Color(0xff797979); // Same as mutedGray in dark mode
}

class AppDarkModeColors {
  static const Color primaryTextColor = Color(0xffffffff);
  static const Color accentOrange = Color(0xffFD6F00); // Bright Orange Accent
  static const Color blackColor = Color(0xff000000);
  static const Color backgroundLightGray = Color(0xffFAFAFA); // Very Light Background
  static const Color lightGray = Color(0xffF8F8F8); // Light Gray
  static const Color mediumGray = Color(0xffEDECEC); // Medium Gray
  static const Color darkGray = Color(0xff545454); // Dark Gray
  static const Color borderGray = Color(0xffE2E2E2); // Border Color
  static Color overlayBlack = const Color(0xff000000).withOpacity(0.2); // Black Overlay
  static const Color subtleGray = Color(0xffD9D9D9); // Subtle Gray
  static const Color charcoalGray = Color(0xff424242); // Charcoal Gray
  static const Color deepBlack = Color(0xff1E1E1E); // Deep Black
  static const Color brightBlue = Color(0xff52ADFC); // Bright Blue
  static const Color softPinkBackground = Color(0xffFFF8F8); // Soft Pink Background
  static const Color peachBackground = Color(0xffFFEBDB); // Peach Background
  static const Color neutralGray = Color(0xffAFAFAF); // Neutral Gray
  static const Color mutedGray = Color(0xff797979); // Muted Gray
  static const Color transparentBlack = Color(0xff121212); // Transparent Black
}

class AppSharedColors {
  static const Color accentOrange = Color(0xffFD6F00);
  static const Color charcoalGray = Color(0xff545454);
  static const Color mediumGray = Color(0xffEDECEC);
  static const Color borderGray = Color(0xffE2E2E2);
  static const Color subtleGray = Color(0xffD9D9D9);
  static const Color deepBlack = Color(0xff1E1E1E);
  static const Color darkCharcoal = Color(0xff424242);
  static const Color peachBackground = Color(0xffFFEBDB);
  static const Color neutralGray = Color(0xffAFAFAF);
  static const Color mutedGray = Color(0xff797979);
  static const Color sharedIconColor = Color(0xffAE12D4); // Icon color for both modes
}
 */
