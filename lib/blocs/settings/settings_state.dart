part of 'settings_cubit.dart';

@immutable
abstract class SettingsState {
  final ThemeMode themeMode;
  final Locale local;

  SettingsState({this.themeMode, this.local});
}

class SettingsInitial extends SettingsState {
  SettingsInitial()
      : super(
          local: i18n.locale,
          themeMode: ThemeMode.system,
        );
}

class SettingsChanged extends SettingsState {
  SettingsChanged({ThemeMode themeMode, Locale local})
      : super(local: local, themeMode: themeMode);
}
