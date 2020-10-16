import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

import 'package:mobile/blocs/blocs.dart';
import 'package:mobile/pages/pages.dart';
import 'package:mobile/global/global.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) => MaterialApp(
        themeMode: state.themeMode,
        theme: AppTheme.baseTheme,
        darkTheme: AppTheme.darkTheme,
        localizationsDelegates: Translations.localizationsDelegates,
        supportedLocales: Translations.supportedLocales,
        locale: state.local,
        routes: {
          AppRoutes.HOME: (_) => HomePage(),
          AppRoutes.SIGN_IN: (_) => SignInPage(),
          AppRoutes.RESET_PASSWORD: (_) => ForgotPasswordPage(),
          AppRoutes.SIGN_UP: (_) => SignUpPage(),
        },
      ),
    );
  }
}
