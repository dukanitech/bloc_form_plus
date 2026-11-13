# 0.3.3

Web demo app aligned with **`bloc_form_plus` / `flutter_bloc_form_plus` 0.3.3** and Flutter **3.50.0**.

## Documentation & tutorials

* All tutorials, Code tabs, and home/drawer badges show **`flutter_bloc_form_plus: ^0.3.3`**.
* **`TutorialPackageSetup`** documents **`material_ui` / `cupertino_ui`** imports for Flutter **3.50+**, Equatable **3**, and 0.3.x APIs.
* **What's New 0.3.3** covers the Material / Cupertino UI package migration plus existing 0.3.x showcase features.

## Changed

* **App version:** **0.3.3** (matches published packages).
* **`flutter_bloc_form_plus`:** **^0.3.3** (`material_ui` / `cupertino_ui`, `bloc_form_plus` **^0.3.3**).
* FVM / demo target: Flutter **3.50.0**.

## Demo UI

* Home / drawer version badges: **v0.3.3 · Flutter 3.50.0**.
* Examples import Material via **`package:material_ui/material_ui.dart`**.

# 0.3.2

Web demo app aligned with **`bloc_form_plus` / `flutter_bloc_form_plus` 0.3.2** and Flutter **3.50.0**.

## Documentation & tutorials

* All tutorials, Code tabs, and home/drawer badges show **`flutter_bloc_form_plus: ^0.3.2`**.
* **`TutorialPackageSetup`** updated for Flutter **3.50.0+**, Equatable **3**, and 0.3.2 APIs (`clearError`, `clearErrors`, `fields`, adaptive builders).
* **What's New 0.3.2** example and tutorial cover Equatable 3 compatibility plus existing 0.3.x showcase features.

## Changed

* **App version:** **0.3.2** (matches published packages).
* **`flutter_bloc_form_plus`:** **^0.3.2** (Equatable **^3.0.0**, `bloc_form_plus` **^0.3.2**).
* FVM / demo target: Flutter **3.50.0**.
* Dependency / analyzer refresh for Dart 3.12 / Flutter 3.50.

## Web

* Bootstrapping uses Flutter **`flutter_bootstrap.js`** + `_flutter.loader.load()`.
* Custom `web/flutter_bootstrap.js` hides the splash via `onEntrypointLoaded` after `runApp()`.

## Demo UI

* **What's New 0.3.2** — adaptive / Cupertino fields, `SensitiveContent`, `RadioGroupFieldBlocBuilder`, TypeAhead, `FormBloc.clearErrors()`, `FormBlocState.fields`.
* Home / drawer version badges: **v0.3.2 · Flutter 3.50.0**.
* Built-in widgets, wizard (`sensitiveContent`), and submission-error (**Clear errors**) examples stay aligned with the library.

## iOS & macOS

* Swift Package Manager (Flutter default): CocoaPods removed where migrated; SPM package integration for plugins.
* **macOS:** `applicationSupportsSecureRestorableState` in `AppDelegate.swift`.

## Android

* Edge-to-edge via `WindowCompat.setDecorFitsSystemWindows(window, false)`.

## Tooling & CI

* `analysis_options.yaml` excludes `build/**`.
* Pub workspace via root monorepo `pubspec.yaml`.
* GitHub Actions web deploy uses Flutter **3.50.0** and `flutter pub get` at the repo root.
