import 'package:flutter/material.dart';
import 'package:flutter_bloc_form/flutter_bloc_form.dart';
import 'package:bloc_form_web/pages/home_page.dart';
import 'package:bloc_form_web/routes.dart';
import 'package:bloc_form_web/super_bloc_delegate.dart';

void main() {
  Bloc.observer = SuperBlocDelegate();
  runApp(const App());

}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bloc_form',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        primaryColor: Colors.deepOrangeAccent,
        fontFamily: 'JosefinSans',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.home,
      routes: routes,
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }
}
