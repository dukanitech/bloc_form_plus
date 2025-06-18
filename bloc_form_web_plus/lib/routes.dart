import 'package:flutter/widgets.dart';
import 'package:bloc_form_web_plus/pages/all_fields_form_example_page.dart';
import 'package:bloc_form_web_plus/pages/async_field_validation_example_page.dart';
import 'package:bloc_form_web_plus/pages/conditional_fields_example_page.dart';
import 'package:bloc_form_web_plus/pages/home_page.dart';
import 'package:bloc_form_web_plus/pages/list_fields_example_page.dart';
import 'package:bloc_form_web_plus/pages/loading_and_initializing_example_page.dart';
import 'package:bloc_form_web_plus/pages/serialized_form_example_page.dart';
import 'package:bloc_form_web_plus/pages/simple_example_page.dart';
import 'package:bloc_form_web_plus/pages/submission_error_to_field_example_page.dart';
import 'package:bloc_form_web_plus/pages/submission_progress_example_page.dart';
import 'package:bloc_form_web_plus/pages/wizard_example_page.dart';
import 'package:bloc_form_web_plus/pages/validation_based_on_other_field_example_page.dart';

class RouteNames {
  RouteNames._();

  static const String home = '/';
  static const String simpleExample = '/simple_example';
  static const String wizardExample = '/wizard_example';
  static const String loadingAndInitializingExample =
      '/loading_and_initializing_example';
  static const String asyncFieldValidationExample =
      '/async_field_validation_example';
  static const String conditionalFieldsExample =
      '/conditional_fields_example';
  static const String serializedFormExample = '/serialized_form_example';
  static const String builtInWidgetsExample = '/built_in_widgets_example';
  static const String submissionErrorToFieldExample =
      '/submission_error_to_field_example';
  static const String submissionProgressExample =
      '/submission_progress_example';
  static const String listFieldsExample = '/list_fields_example';
  static const String validationBasedOnOtherFieldExample =
      '/validation_based_on_other_field';
}

final routes = <String, WidgetBuilder>{
  RouteNames.home: (_) => const HomePage(),
  RouteNames.simpleExample: (_) => const SimpleExamplePage(),
  RouteNames.wizardExample: (_) => const WizardExamplePage(),
  RouteNames.loadingAndInitializingExample: (_) =>
      const LoadingAndInitializingExamplePage(),
  RouteNames.asyncFieldValidationExample: (_) =>
      const AsyncFieldValidationExamplePage(),
  RouteNames.conditionalFieldsExample: (_) => const ConditionalFieldsExamplePage(),
  RouteNames.serializedFormExample: (_) => const SerializedFormExamplePage(),
  RouteNames.builtInWidgetsExample: (_) => const AllFieldsExamplePage(),
  RouteNames.submissionErrorToFieldExample: (_) =>
      const SubmissionErrorToFieldExamplePage(),
  RouteNames.submissionProgressExample: (_) =>
      const SubmissionProgressExamplePage(),
  RouteNames.listFieldsExample: (_) => const ListFieldsExamplePage(),
  RouteNames.validationBasedOnOtherFieldExample: (_) =>
      const ValidationBasedOnOtherFieldExamplePage(),
};
