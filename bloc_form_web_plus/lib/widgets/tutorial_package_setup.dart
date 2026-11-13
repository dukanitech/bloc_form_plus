import 'package:material_ui/material_ui.dart';
import 'package:bloc_form_web_plus/widgets/code_card.dart';
import 'package:bloc_form_web_plus/widgets/tutorial_text.dart';

/// Shared tutorial snippets for **bloc_form_plus** / **flutter_bloc_form_plus** 0.3.3.
class TutorialPackageSetup {
  TutorialPackageSetup._();

  static const String importBlock = '''
import 'package:material_ui/material_ui.dart';
import 'package:flutter_bloc_form_plus/flutter_bloc_form_plus.dart';
''';

  static const String packageNote = '''
**bloc_form 0.3.3** targets **Flutter 3.50.0+** (Dart 3.12) and uses **Equatable 3**.

On Flutter 3.50+, import Material via **`package:material_ui/material_ui.dart`** (and Cupertino via **`package:cupertino_ui/cupertino_ui.dart`**). `package:flutter/material.dart` is deprecated.

Add **`flutter_bloc_form_plus: ^0.3.3`** to `pubspec.yaml`. It depends on **`bloc_form_plus: ^0.3.3`** (form logic, validators, `FieldBloc.clearError()`, `FormBloc.clearErrors()`, and `FormBlocState.fields`).

If your app also depends on `equatable` directly, use **`equatable: ^3.0.0`**.
''';

  static const String builders030 = '''
**Built-in field builders** include:
* TextFieldBlocBuilder (TypeAhead suggestions, web scroll padding, SensitiveContent)
* AdaptiveTextFieldBlocBuilder / CupertinoTextFieldBlocBuilder
* DropdownFieldBlocBuilder, RadioButtonGroupFieldBlocBuilder, RadioGroupFieldBlocBuilder
* CheckboxFieldBlocBuilder, SwitchFieldBlocBuilder, CheckboxGroupFieldBlocBuilder
* DateTimeFieldBlocBuilder, TimeFieldBlocBuilder
* StepperFormBlocBuilder (respects reduce motion)
''';

  /// Standard dependency + import steps for example tutorials.
  static List<Widget> dependencySteps({String? headerPrefix}) {
    return [
      if (headerPrefix != null) TutorialText.header(headerPrefix),
      TutorialText(packageNote),
      CodeCard.pubspec(),
      TutorialText.sub('Import the library:'),
      CodeCard.main(code: importBlock),
    ];
  }
}
