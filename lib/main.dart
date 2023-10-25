import 'package:ecommerce/screen/common.dart';
import 'package:ecommerce/screen/register/register.dart';
import 'package:ecommerce/screen/shared_preference/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/screen/shared_pref2/login.dart';
import 'package:ecommerce/screen/calculator/calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Demo',
      theme: ThemeData(
          // test
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
          ),
      home: const RegisterScreen(),
    );
  }
}
