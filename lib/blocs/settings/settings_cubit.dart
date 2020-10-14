import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:mobile/global/utils/i18n.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  changeLocale(Locale locale) {
    emit(SettingsChanged(local: locale, themeMode: state.themeMode));
  }

  changeThemeMode(ThemeMode mode) {
    emit(SettingsChanged(local: state.local, themeMode: mode));
  }
}
