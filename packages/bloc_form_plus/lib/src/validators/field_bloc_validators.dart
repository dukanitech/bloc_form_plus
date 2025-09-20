import 'package:bloc_form_plus/src/blocs/field/field_bloc.dart';

class FieldBlocValidatorsErrors {
  FieldBlocValidatorsErrors._();

  static const String required = 'Required - Validator Error';

  static const String email = 'Email - Validator Error';

  static const String passwordMin6Chars = 'Password Min 6 Chars - Validator Error';

  static const String confirmPassword = 'Confirm Password - Validator Error';


  static const String minLength = 'Min Length - Validator Error';
  static const String maxLength = 'Max Length - Validator Error';
  static const String phone = 'Phone - Validator Error';
  static const String number = 'Number - Validator Error';
  static const String url = 'URL - Validator Error';
  static const String date = 'Date - Validator Error';
  static const String regex = 'Regex - Validator Error';

}

class FieldBlocValidators {
  FieldBlocValidators._();

  /// Check if the [value] is is not null, not empty or false.
  ///
  /// Returns `null` if is valid.
  ///
  /// Returns [FieldBlocValidatorsErrors.required]
  /// if is not valid.
  static String? required(dynamic value, {String? errorMessage}) {
    if (value == null ||
        value == false ||
        ((value is Iterable || value is String || value is Map) &&
            value.length == 0)) {
      return errorMessage ?? FieldBlocValidatorsErrors.required;
    }
    return null;
  }

  /// Check if the [string] is an email
  /// if [string] is not null and not empty.
  ///
  /// Returns `null` if is valid.
  ///
  /// Returns [FieldBlocValidatorsErrors.email]
  /// if is not valid.
  static String? email(String? string, {String? errorMessage}) {
    final emailRegExp =
        RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
    if (string == null || string.isEmpty || emailRegExp.hasMatch(string)) {
      return null;
    }

    return errorMessage ?? FieldBlocValidatorsErrors.email;
  }

  /// Check if the [string] has min 6 chars
  /// if [string] is not null and not empty.
  ///
  /// Returns `null` if is valid.
  ///
  /// Returns [FieldBlocValidatorsErrors.passwordMin6Chars]
  /// if is not valid.
  static String? passwordMin6Chars(String? string, {String? errorMessage}) {
    if (string == null || string.isEmpty || string.runes.length >= 6) {
      return null;
    }
    return errorMessage?? FieldBlocValidatorsErrors.passwordMin6Chars;
  }

  /// Check if the `value` of the current [TextFieldBloc] is equals
  /// to [passwordTextFieldBloc.value].
  ///
  /// Returns a [Validator] `String Function(String string)`.
  ///
  /// This validator check if the `string` is equal to the current
  /// value of the [TextFieldBloc]
  /// if [string] is not null and not empty.
  ///
  /// Returns `null` if is valid.
  ///
  /// Returns [FieldBlocValidatorsErrors.email]
  /// if is not valid.
  ///
  /// Returns [FieldBlocValidatorsErrors.passwordMin6Chars]
  /// if is not valid.
  static Validator<String?> confirmPassword(
    TextFieldBloc<dynamic> passwordTextFieldBloc, {String? errorMessage}
  ) {
    return (String? confirmPassword) {
      if (confirmPassword == null ||
          confirmPassword.isEmpty ||
          confirmPassword == passwordTextFieldBloc.value) {
        return null;
      }
      return errorMessage?? FieldBlocValidatorsErrors.confirmPassword;
    };
  }




  /// Check if the [string] has min [min] chars
  /// if [string] is not null and not empty.
  ///
  /// Returns `null` if is valid.
  ///
  /// Returns [FieldBlocValidatorsErrors.minLength]
  /// if is not valid.
  /// Min length validator.

  static Validator<String?> minLength(int min, {String? errorMessage}) {
    return (String? string) {
      if (string == null || string.isEmpty || string.length >= min) {
        return null;
      }
      return errorMessage ?? FieldBlocValidatorsErrors.minLength;
    };
  }

  /// Check if the [string] has max [max] chars
  /// if [string] is not null and not empty.
  ///
  /// Returns `null` if is valid.
  ///
  /// Returns [FieldBlocValidatorsErrors.maxLength]
  /// if is not valid.
  /// Max length validator.
  static Validator<String?> maxLength(int max, {String? errorMessage}) {
    return (String? string) {
      if (string == null || string.isEmpty || string.length <= max) {
        return null;
      }
      return errorMessage ?? FieldBlocValidatorsErrors.maxLength;
    };
  }

  /// Phone number validator (basic).
  static String? phone(String? string, {String? errorMessage}) {
    final phoneRegExp = RegExp(r'^\+?[0-9]{7,15}$');
    if (string == null || string.isEmpty || phoneRegExp.hasMatch(string)) {
      return null;
    }
    return errorMessage ?? FieldBlocValidatorsErrors.phone;
  }

  /// Number validator.
  static String? number(String? string, {String? errorMessage}) {
    if (string == null || string.isEmpty || double.tryParse(string) != null) {
      return null;
    }
    return errorMessage ?? FieldBlocValidatorsErrors.number;
  }

  /// URL validator.
  static String? url(String? string, {String? errorMessage}) {
    final urlRegExp = RegExp(
      r'^(https?:\/\/)?([a-zA-Z0-9\-]+\.)+[a-zA-Z]{2,}(:\d+)?(\/.*)?$',
    );
    if (string == null || string.isEmpty || urlRegExp.hasMatch(string)) {
      return null;
    }
    return errorMessage ?? FieldBlocValidatorsErrors.url;
  }

  /// Date validator (YYYY-MM-DD).
  static String? date(String? string, {String? errorMessage}) {
    final dateRegExp = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    if (string == null || string.isEmpty || dateRegExp.hasMatch(string)) {
      return null;
    }
    return errorMessage ?? FieldBlocValidatorsErrors.date;
  }

  /// Check if the [string] has pattern [pattern] chars
  /// if [string] is not null and not empty.
  ///
  /// Returns `null` if is valid.
  ///
  /// Returns [FieldBlocValidatorsErrors.regex]
  /// if is not valid.
  /// Custom regex validator.
  static Validator<String?> regex(
      String pattern, {
        String? errorMessage,
        bool caseSensitive = true,
      }) {
    final regExp = RegExp(pattern, caseSensitive: caseSensitive);
    return (String? string) {
      if (string == null || string.isEmpty || regExp.hasMatch(string)) {
        return null;
      }
      return errorMessage ?? FieldBlocValidatorsErrors.regex;
    };
  }



}
