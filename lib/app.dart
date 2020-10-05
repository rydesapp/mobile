import 'package:flutter/material.dart';
import 'package:mobile/blocs/settings/settings_bloc.dart';
import 'package:mobile/global/utils/i18n.dart';
import 'home/view/view.dart';
import 'package:mobile/global/ui/ui.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) => MaterialApp(
        home: HomePage(),
        themeMode: state.themeMode,
        theme: AppTheme.baseTheme,
        darkTheme: AppTheme.darkTheme,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: i18n.supportedLocales(),
        locale: state.local,
      ),
    );
  }
}
