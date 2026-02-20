import 'package:flutter/material.dart';
import 'package:flutter_15/module_10/class_1.dart';
import 'package:flutter_15/module_10/class_2.dart';
import 'home.dart';
import 'module_10/class_3.dart';
import 'module_9/class_3.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,

        scaffoldBackgroundColor: Colors.blue.shade50,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            )
          )
        ),


        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            fontSize: 18,
            color: Colors.blue
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
        )

      ),

      debugShowCheckedModeBanner: false,
      title: 'Flutter 15',
      home: Class2(),
    );
  }
}
