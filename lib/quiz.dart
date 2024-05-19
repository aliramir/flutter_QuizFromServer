import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _MyQuizPage();
}

class _MyQuizPage extends State<QuizPage> {
  var question = [];
  var index = 0;
  var trueAnswers = 0;
  var falseAnswers = 0;
  fetchQuestion() {}
  validateAnswer() {}

  @override
  void initState() {
    fetchQuestion();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'Quiz',
            style: TextStyle(color: Color.fromARGB(255, 31, 31, 31)),
          ),
          elevation: 10,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: const Color.fromARGB(255, 247, 183, 6),
              )
            ],
          ),
        ));
  }
}
