import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  AppTheme._();
  static bool isDark = false;

  static final baseTheme = applyBranding(ThemeData.light().copyWith(
    scaffoldBackgroundColor: lighterColor,
  ));

  static final darkTheme = applyBranding(
    ThemeData.dark().copyWith(
      scaffoldBackgroundColor: darkerColor,
    ),
  );

  static applyBranding(ThemeData theme) {
    return theme.copyWith(
      primaryColor: primaryColor,
      accentColor: accentColor,
      textTheme: TextTheme(
        headline6: theme.textTheme.headline6.copyWith(color: lightColor),
      ),
      buttonTheme: theme.buttonTheme.copyWith(
        buttonColor: primaryColor,
        colorScheme: ColorScheme.light(),
      ),
    );
  }
}
