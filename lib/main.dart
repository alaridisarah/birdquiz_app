import 'package:flutter/material.dart';
import 'package:quiz_app/screens/loginscreen.dart';
import 'package:quiz_app/screens/quizscreen.dart';
import 'package:quiz_app/screens/splashscreen.dart';
import 'package:quiz_app/screens/categoryscreen.dart';

void main() {
  // the enrty point in our project
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const quizscreen(),
    );
  }
}
