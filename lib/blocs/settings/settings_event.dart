part of 'settings_bloc.dart';

@immutable
abstract class SettingsEvent {
  final dynamic data;
  SettingsEvent(this.data);
}

class ThemeModeChanged extends SettingsEvent {
  ThemeModeChanged(ThemeMode data) : super(data);
}

class LocaleChanged extends SettingsEvent {
  LocaleChanged(Locale data) : super(data);
}
