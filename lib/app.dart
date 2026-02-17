import 'package:flutter/material.dart';
import 'package:flutter_15/module_10/class_1.dart';
import 'package:flutter_15/module_10/class_2.dart';
import 'home.dart';
import 'module_9/class_3.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 15',
      home: Class2(),
    );
  }
}
