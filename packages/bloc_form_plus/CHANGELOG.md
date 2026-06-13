# 0.3.0

Flutter **3.44.2** / Dart **3.12** release aligned with `flutter_bloc_form_plus` **0.3.0**.

## Added

* **`FieldBloc.clearError()`** — clears the validation error without changing the field value (mirrors Flutter `FormFieldState.clearError`). Supported on single fields and nested group/list fields.
* **`FormBloc.clearErrors()`** — clears validation errors on every field without resetting values (mirrors Flutter `Form.clearError`).
* **`FormBlocState.fields`** — getter alias for `flatFieldBlocs()` (mirrors Flutter `FormState.fields`).

## Changed

* **SDK constraint:** `>=3.8.0 <4.0.0` (Dart 3.12.2 via Flutter 3.44.2).
* **`bloc`:** upgraded to **^9.2.0**.
* **`bloc_test`:** upgraded to **^10.0.0**.
* **`test`:** upgraded to **^1.29.0**.
* **`meta`:** upgraded to **^1.17.0**.
* **`equatable`:** upgraded to **^2.0.8**.
* **`collection`:** upgraded to **^1.19.1**.
* **`uuid`:** upgraded to **^4.5.2**.
* **`lints`:** upgraded to **^6.0.0**.
* **`onValueChanges`:** renamed internal callback locals to satisfy `no_leading_underscores_for_local_identifiers`.
* **`FieldBlocState.toString`:** refactored string building to satisfy Dart 3.12 analyzer.
* **`FormBlocState._toStringWith`:** refactored nested helpers and buffer naming for analyzer compliance.

## Tests

* Added tests for **`clearError()`** on `InputFieldBloc`.
* Added tests for **`FormBloc.clearErrors()`**.
* Added tests for **`FormBlocState.fields`**.

# 0.2.3
 * **Minor fix of changelog arrangement**

# 0.2.2
## FieldBlocValidators Update

**Date:** 2025-09-20

**Changes:**

* **Added New Validators:**
  * `minLength(int min)`
  * `maxLength(int max)`
  * `phone()`
  * `number()`
  * `url()`
  * `date()` (YYYY-MM-DD)
  * `regex(String pattern)`

  * **Customizable Error Messages:**
    * All validators now support an optional `errorMessage` parameter to override default messages per field.
    * Example:
      ```dart
      validator: (value) => FieldBlocValidators.minLength(8, errorMessage: "Must be 8+ chars")(value);
      ```


* **Improved Documentation & Comments:**
  * Added clear DartDoc comments for each validator, explaining behavior, return value, and usage.

  * **Backward Compatibility:**
    * Existing validators (`required`, `email`, `passwordMin6Chars`, `confirmPassword`) remain unchanged in usage.
    * Supports both legacy single-error and new override/customization usage.

# 0.1.3
* **`Changed from InputDecorationTheme to InputDecorationThemeData`**

* **`Upgrade to support flutter 3.35`**
* **`Upgrade Bloc to latest version 9.1.1`**

# 0.1.2

*✅ Upgrade*
### Upgraded project to Flutter 3.32.0, ensuring compatibility with the latest Dart SDK and Flutter framework features.

## 🔁 Migration
* **`Migrated from deprecated:`**

* **`MaterialState → WidgetState`**

* **`MaterialStateProperty → WidgetStateProperty`**

* **`Replaced deprecated Opacity usage with modern withValues alternatives`**.

* **`Updated widget code to remove redundant constructors using super to streamline class initialization.`**

## 🧹 Cleanup
* **`Removed redundant constructor boilerplate by leveraging super where applicable.`**

* **`Fixed invalid use of private types in public APIs to comply with Dart 3+ type safety.`**

## 🐞 Fixes
Fixed common issue with BuildContext usage across async gaps, avoiding errors caused by calling context after await.




# 0.1.0

* Initial Version of the library.
