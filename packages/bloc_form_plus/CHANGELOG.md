
# 0.1.0

* Initial Version of the library.

# 0.1.2

✅ Upgrade
Upgraded project to Flutter 3.32.0, ensuring compatibility with the latest Dart SDK and Flutter framework features.

🔁 Migration
Migrated from deprecated:

MaterialState → WidgetState

MaterialStateProperty → WidgetStateProperty

Replaced deprecated Opacity usage with modern withValues alternatives.

Updated widget code to remove redundant constructors using super to streamline class initialization.

🧹 Cleanup
Removed redundant constructor boilerplate by leveraging super where applicable.

Fixed invalid use of private types in public APIs to comply with Dart 3+ type safety.

🐞 Fixes
Fixed common issue with BuildContext usage across async gaps, avoiding errors caused by calling context after await.

#0.1.3
Changed from InputDecorationTheme to InputDecorationThemeData
Upgrade to support flutter 3.35
Upgrade Bloc to latest version 9.1.1
