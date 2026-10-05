import 'package:flutter/material.dart';
// import 'package:project_kk3/pages/homepage.dart';
import 'package:project_kk3/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => const LoginPage(),
      },
      home: const LoginPage(),
    );
  }
}
