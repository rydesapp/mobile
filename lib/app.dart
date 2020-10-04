import 'package:flutter/material.dart';
import 'package:mobile/global/utils/i18n.dart';
import 'home/view/view.dart';
import 'package:mobile/global/ui/ui.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.system,
      theme: AppTheme.baseTheme,
      darkTheme: AppTheme.darkTheme,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: i18n.supportedLocales(),
    );
  }
}
