import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/start.dart';

void main(List<String> args) {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "home": (context) => Home(),
      },
      theme: ThemeData(primarySwatch: Colors.purple),
      home: start(),
    );
  }
}
