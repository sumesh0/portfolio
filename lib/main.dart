import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      appBarTheme: const AppBarTheme(
        actionsIconTheme: IconThemeData(color: Colors.white),
            iconTheme: IconThemeData(color: Color.fromARGB(0, 255, 255, 255))
      )
    ),
    initialRoute: 'login',
    routes: {
      'home': (context) => const MyHome(),
      'about': (context) => const AboutMe(),
      'login': (context) => const Login(),
    },
  ));
}

