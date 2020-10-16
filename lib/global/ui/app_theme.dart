import 'package:flutter/material.dart';
import 'package:mobile/global/utils/i18n.dart';
import 'colors.dart';

class AppTheme {
  AppTheme._();
  static bool isDark = false;

  static final baseTheme = applyBranding(
    ThemeData(
      fontFamily: fontFamily,
      textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: 16),
        bodyText2: TextStyle(fontSize: 16),
        headline6: TextStyle(color: lightColor),
      ),
      snackBarTheme: SnackBarThemeData(
        contentTextStyle: TextStyle(
          fontSize: 16,
          color: lightestColor,
        ),
      ),
      pageTransitionsTheme: PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
        },
      ),
    ),
  );

  static final lightTheme = baseTheme.copyWith(
    scaffoldBackgroundColor: lightestColor,
    brightness: Brightness.light,
  );

  static final darkTheme = baseTheme.copyWith(
    scaffoldBackgroundColor: darkerColor,
    brightness: Brightness.dark,
  );

  static get themedTextColor => AppTheme.isDark ? lightestColor : darkColor;

  static get fontFamily =>
      i18n.currentLanguage == 'en' ? 'Geomanist' : 'NotoSansArabicUI';

  static applyBranding(ThemeData theme) {
    return theme.copyWith(
      primaryColor: primaryColor,
      accentColor: accentColor,
      textTheme: theme.textTheme.copyWith(),
      buttonTheme: theme.buttonTheme.copyWith(
        buttonColor: primaryColor,
        colorScheme: ColorScheme.light(),
      ),
    );
  }
}
