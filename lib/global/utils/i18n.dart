import 'dart:async';
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

///
/// Preferences related
///
const String _storageKey = "MyApplication_";
Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

class GlobalTranslations {
  Locale _locale;

  Translations translate;

  set context(BuildContext context) {
    translate = Translations.of(context);
  }

  ///
  /// Returns the current language code
  ///
  String get currentLanguage => _locale == null ? 'en' : _locale.languageCode;

  ///
  /// Returns the current Locale
  ///
  Locale get locale => _locale;

  ///
  /// One-time initialization
  ///
  Future<Null> init([BuildContext context, String language]) async {
    context = context;

    if (_locale == null) {
      await setNewLanguage(language);
    }
    return null;
  }

  /// ----------------------------------------------------------
  /// Method that saves/restores the preferred language
  /// ----------------------------------------------------------
  _getPreferredLanguage() async {
    return _getApplicationSavedInformation('language');
  }

  _setPreferredLanguage(String lang) async {
    return _setApplicationSavedInformation('language', lang);
  }

  ///
  /// Routine to change the language
  ///
  Future<Null> setNewLanguage(
      [String newLanguage, bool saveInPrefs = false]) async {
    String language = newLanguage;
    if (language == null) {
      language = await _getPreferredLanguage();
    }

    // Set the locale
    if (language == "") {
      language = "en";
    }
    _locale = Locale(language, "");

    // If we are asked to save the new language in the application preferences
    if (saveInPrefs) {
      await _setPreferredLanguage(language);
    }

    return null;
  }

  ///
  /// Application Preferences related
  ///
  /// ----------------------------------------------------------
  /// Generic routine to fetch an application preference
  /// ----------------------------------------------------------
  Future<String> _getApplicationSavedInformation(String name) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(_storageKey + name) ?? '';
  }

  /// ----------------------------------------------------------
  /// Generic routine to saves an application preference
  /// ----------------------------------------------------------
  Future<bool> _setApplicationSavedInformation(
      String name, String value) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.setString(_storageKey + name, value);
  }

  ///
  /// Singleton Factory
  ///
  static final GlobalTranslations _translations =
      GlobalTranslations._internal();
  factory GlobalTranslations() {
    return _translations;
  }
  GlobalTranslations._internal();
}

GlobalTranslations i18n = GlobalTranslations();
