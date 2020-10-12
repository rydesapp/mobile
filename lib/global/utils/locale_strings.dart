import 'i18n.dart';

class AppLocaleStrings {
  const AppLocaleStrings._();

  static String get landingSentence => i18n.text('landing_sentence');
  static String get signUp => i18n.text('sign_up');
  static String get signIn => i18n.text('sign_in');
  static String get forgotPassword => i18n.text('forgot_password');
  static String get emailOrUsername => i18n.text('email_or_username');
  static String get password => i18n.text('password');
  static String get back => i18n.text('back');
  static String validationRequired(String field) =>
      i18n.text('validation.required', {'field': field});
  static String validationEmail(String field) =>
      i18n.text('validation.email', {'field': field});
  static String validationMin(String field, int min) =>
      i18n.text('validation.min', {'field': field, 'min': '$min'});
  static String validationMax(String field, int max) =>
      i18n.text('validation.max', {'field': field, 'max': '$max'});
}
