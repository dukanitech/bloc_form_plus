import 'package:flutter/material.dart';
import 'package:bloc_form_web_plus/examples/all_fields_form.dart';
import 'package:bloc_form_web_plus/widgets/widgets.dart';

class AllFieldsExamplePage extends StatelessWidget {
  const AllFieldsExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExampleScaffold(
      title: 'Built-in Widgets',
      demo: DeviceScreen(app: AllFieldsForm()),
      code: CodeScreen(codePath: 'lib/examples/all_fields_form.dart'),
    );
  }
}
