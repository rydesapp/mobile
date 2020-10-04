import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  AppTheme._();

  static final baseTheme = applyBranding(ThemeData.light());

  static final darkTheme = applyBranding(ThemeData.dark());

  static applyBranding(ThemeData theme) {
    final backgroundColor =
        theme.brightness == Brightness.dark ? darkerColor : lighterColor;
    
    return theme.copyWith(
      primaryColor: primaryColor,
      accentColor: accentColor,
      scaffoldBackgroundColor: backgroundColor,
      
    );
  }

  
}
