import 'package:flutter/material.dart';
import 'package:flutter_application_1/help.dart';
import 'package:flutter_application_1/quiz.dart';
import 'package:flutter_application_1/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
      routes: {
        '/help': (context) => const HelpPage(),
        '/home': (context) => const WelcomePage(),
        '/quiz': (context) => const QuizPage(),
      },
    );
  }
}
