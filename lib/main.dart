import 'package:commercex_ecommerce_app/screens/login_screen.dart';
import 'package:commercex_ecommerce_app/screens/sign_up_screen.dart';
import 'package:commercex_ecommerce_app/screens/verification_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
