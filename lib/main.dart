import 'package:flutter/material.dart';
import 'package:quiz_app/home/home_page.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// page, screen, view, UI - бет, страница
