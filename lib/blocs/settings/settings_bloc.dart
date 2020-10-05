import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:mobile/global/utils/i18n.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsInitial());

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    if (event is ThemeModeChanged) {
      yield SettingsChanged(themeMode: event.data, local: state.local);
    } else if (event is LocaleChanged) {
      await i18n.setNewLanguage(event.data.languageCode);
      yield SettingsChanged(themeMode: state.themeMode, local: event.data);
    }
  }
}
