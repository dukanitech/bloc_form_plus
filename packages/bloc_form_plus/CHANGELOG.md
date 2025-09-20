
# 0.1.0

* Initial Version of the library.

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

# 0.1.3
* **`Changed from InputDecorationTheme to InputDecorationThemeData`**

* **`Upgrade to support flutter 3.35`**
* **`Upgrade Bloc to latest version 9.1.1`**


# 0.2.0
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

