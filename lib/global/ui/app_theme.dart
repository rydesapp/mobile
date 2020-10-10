import 'package:flutter/material.dart';
import 'package:mobile/global/utils/i18n.dart';
import 'colors.dart';

class AppTheme {
  AppTheme._();
  static bool isDark = false;

  static final baseTheme = applyBranding(ThemeData(
    fontFamily: fontFamily,
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: 16),
      bodyText2: TextStyle(fontSize: 16),
      headline6: TextStyle(color: lightColor),
    ),
  ));

  static final lightTheme = baseTheme.copyWith(
    scaffoldBackgroundColor: lighterColor,
    brightness: Brightness.light,
  );

  static final darkTheme = baseTheme.copyWith(
    scaffoldBackgroundColor: darkerColor,
    brightness: Brightness.dark,
  );

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
