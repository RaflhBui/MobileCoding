import 'package:flutter/material.dart';
import 'examples.dart';
import 'baitap1.dart';
import 'baitap2.dart';
import 'baitap3.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Examples',
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: true,
      ),
      home: BaiTap3(),
    );
  }
}