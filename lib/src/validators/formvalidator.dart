import 'dart:js_interop';

import '../../appform.dart';

typedef bool ValidateFunction<T>(T? value);

class FormValidator<T> {
  final ValidateFunction<T> validate;
  final String errorMessage;

  FormValidator({required this.validate, required this.errorMessage});

  //region $  •••••••••••••••  Constructors •••••••••••••••

  factory FormValidator.empty(String errorMessage) => FormValidator<T>(
      validate: (T? value) =>
          value is String? ? (value != null && value.isNotEmpty) : value != null,
      errorMessage: errorMessage);

  factory FormValidator.email(String errorMessage, [bool enableEmpty = false]) => FormValidator<T>(
      validate: (T? value) => (enableEmpty && (value.isNull || value == ''))
          ? true
          : value is String
              ? AppRegExp[RegExpType.email]!.hasMatch(value)
              : false,
      errorMessage: errorMessage);

  factory FormValidator.minLength(int minLenght, String errorMessage) => FormValidator<T>(
      validate: (T? value) => value is String ? value.length >= minLenght : false,
      errorMessage: errorMessage);

  factory FormValidator.passwordContainLowercase(String errorMessage) => FormValidator<T>(
      validate: (T? value) =>
          value is String ? AppRegExp[RegExpType.passwordContainLowercase]!.hasMatch(value) : false,
      errorMessage: errorMessage);

  factory FormValidator.passwordContainNumber(String errorMessage) => FormValidator<T>(
      validate: (T? value) =>
          value is String ? AppRegExp[RegExpType.passwordContainNumber]!.hasMatch(value) : false,
      errorMessage: errorMessage);

  factory FormValidator.passwordContainUppercase(String errorMessage) => FormValidator<T>(
      validate: (T? value) =>
          value is String ? AppRegExp[RegExpType.passwordContainUppercase]!.hasMatch(value) : false,
      errorMessage: errorMessage);

  factory FormValidator.passwordContainSpecialCharacter(String errorMessage) => FormValidator<T>(
      validate: (T? value) => value is String
          ? AppRegExp[RegExpType.passwordContainSpecialCharacter]!.hasMatch(value)
          : false,
      errorMessage: errorMessage);

//endregion
}
