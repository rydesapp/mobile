import 'package:mobile/global/utils/i18n.dart';

class Validation {
  final String name, value;
  final bool isRequired, isEmail;
  final int min, max;
  final emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  Validation(
      {this.name = '',
      this.value,
      this.isRequired = false,
      this.isEmail = false,
      this.min = -1,
      this.max = -1});

  Validation withUpdatedValue(value) {
    return Validation(
      value: value,
      name: name,
      isRequired: isRequired,
      isEmail: isEmail,
      max: max,
      min: min,
    );
  }

  String validate() {
    final String safeValue = value ?? "";

    if (isRequired && (safeValue.isEmpty)) {
      return requiredMessage;
    }
    if (isEmail && !emailRegex.hasMatch(safeValue)) {
      return emailMessage;
    }
    if (min > -1 && safeValue.length < min) {
      return minMessage;
    }
    if (max > -1 && safeValue.length > max) {
      return maxMessage;
    }
    return null;
  }

  get requiredMessage => i18n.translate.validationRequired(name);

  get emailMessage => i18n.translate.validationEmail(name);

  get minMessage => i18n.translate.validationMin(name, min);

  get maxMessage => i18n.translate.validationMax(name, max);
}
