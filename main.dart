import 'package:flutter/material.dart'; // Adnroid
import 'flutter01.dart';
import 'flutter02.dart';
import 'flutter03.dart';
import 'flutter04.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: BMICalculator(),
    );
  }
}