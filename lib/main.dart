import 'package:airplane_apps/ui/pages/bonus_page.dart';
import 'package:airplane_apps/ui/pages/get_started_page.dart';
import 'package:airplane_apps/ui/pages/main_page.dart';
import 'package:airplane_apps/ui/pages/sign_up_page.dart';
import 'package:airplane_apps/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStarted(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}