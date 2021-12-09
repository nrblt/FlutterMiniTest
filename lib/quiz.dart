import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String,Object>> questions;
  final Function countScore;

  Quiz({required this.answerQuestion,required this.questions,required this.questionIndex,required this.countScore});


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]['questionText'] as String,
      ),
      ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
        return Answer(answerQuestion,answer,countScore);
      }).toList()
    ],
    );
  }
}
