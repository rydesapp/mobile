import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mobile/blocs/blocs.dart';
import 'package:mobile/pages/pages.dart';
import 'package:mobile/global/global.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) => MaterialApp(
        themeMode: state.themeMode,
        theme: AppTheme.baseTheme,
        darkTheme: AppTheme.darkTheme,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: i18n.supportedLocales(),
        locale: state.local,
        routes: {
          '/': (_) => HomePage(),
          '/sign_in': (_) => SignInPage(),
          '/reset_password': (_) => ForgotPasswordPage(),
        },
      ),
    );
  }
}
