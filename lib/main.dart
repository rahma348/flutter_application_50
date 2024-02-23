import 'package:flutter/material.dart';
import 'package:flutter_application_50/pages/Diabetes.dart';
import 'package:flutter_application_50/pages/Walking.dart';
import 'package:flutter_application_50/pages/home.dart';
import 'package:flutter_application_50/pages/login.dart';
import 'package:flutter_application_50/pages/logo.dart';
import 'package:flutter_application_50/pages/pressure.dart';
import 'package:flutter_application_50/pages/water.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Logo(),
        '/login': (context) => const Login(),
        '/Home': (context) => const Home(),
        '/water': (context) => const Water(),
      '/Pressure': (context) => const Pressure(),
      '/Diabetes': (context) => const Diabetes(),
      '/Walking': (context) => const Walking(),
      },

    );
  }
}

