# 0.3.0

Web demo app aligned with **`flutter_bloc_form_plus` 0.3.0** and Flutter **3.44.2**.

## Web (Flutter 3.44)

* **Migrated web bootstrapping** to Flutter 3.44 **`flutter_bootstrap.js`** + `_flutter.loader.load()` (replaces deprecated manual `main.dart.js` / service worker script in `index.html` that caused infinite loading).
* **Custom `web/flutter_bootstrap.js`** hides the splash screen via `onEntrypointLoaded` after `runApp()`.

## Demo UI (0.3.0 showcase)

* **New example:** `What's New 0.3.0` — `AdaptiveTextFieldBlocBuilder`, `SensitiveContent`, `RadioGroupFieldBlocBuilder`, TypeAhead suggestions, `FormBloc.clearErrors()`, and `FormBlocState.fields`.
* **Home page:** version badge and **What's New 0.3.0** entry button.
* **Navigation drawer:** new **What's New 0.3.0** item and version label.
* **Built-in Widgets example:** added `AdaptiveTextFieldBlocBuilder`, `RadioGroupFieldBlocBuilder`, and TypeAhead city field.
* **Wizard example:** password field uses `sensitiveContent: true`.
* **Submission Error example:** **Clear errors** button demonstrating `FormBloc.clearErrors()`.

## Documentation & tutorials

* **`CodeCard.pubspec`** and every **Code** tab show **`flutter_bloc_form_plus: ^0.3.0`** with SDK `>=3.8.0 <4.0.0`.
* Added **`TutorialPackageSetup`** shared dependency/import snippets for all example tutorials.
* Updated tutorials (Simple, Wizard, Async Validation, Built-in Widgets, etc.) with **bloc_form 0.3.0** setup and builder list.
* Replaced legacy **`flutter_bloc_form`** naming with **`flutter_bloc_form_plus`** in tutorial text.

## Changed

* **SDK constraint:** `>=3.8.0 <4.0.0`.
* **`flutter_bloc_form_plus`:** **^0.3.0** (Cupertino builders, accessibility, `RadioGroup`, typeahead fixes, and related 0.3.0 changes).
* **Dependency updates:** `animations`, `url_launcher`, `google_fonts`, `rxdart`, and other packages refreshed for Dart 3.12 / Flutter 3.44.2 compatibility.
* **Removed** commented `flutter_keyboard_visibility` overrides (no longer required by the form library).

## iOS & macOS

* **Migrated to Swift Package Manager** (Flutter 3.44 default): removed CocoaPods (`Podfile`, `pod install`) on **iOS and macOS** in favor of `FlutterGeneratedPluginSwiftPackage` via Xcode SPM integration.
* **macOS:** `applicationSupportsSecureRestorableState` override in `AppDelegate.swift` (Flutter 3.44 Xcode compatibility).

## Android

* **Edge-to-edge** enabled in `MainActivity.kt` via `WindowCompat.setDecorFitsSystemWindows(window, false)` (Flutter 3.44+ recommendation).

## Tooling

* **`analysis_options.yaml`:** exclude `build/**` from analyzer (avoids false positives on web build artifacts).
* **Pub workspace** integration via root monorepo `pubspec.yaml` (`resolution: workspace`).

## CI

* GitHub Actions workflow (`.github/workflows/bloc_form_plus_web.yml`) updated to Flutter **3.44.2** and `melos bootstrap` before web build.
