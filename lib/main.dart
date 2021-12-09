import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp>{
  static const _questions = [
    {'questionText':'When was 2nd War?',
      'answers':['1983','1984','1945','1934']
    },
    {'questionText':'When is my birthday?',
      'answers':['12 dec','15 dec','10 dec','19 dec']},
    {'questionText':'What is my name?',
      'answers':['Aigul','John','Nurbolat']},
  ];
  static const _answers = ['1945','12 dec','Nurbolat'];
  static var _questionIndex=0;
  static var _score=0;


  void _answerQuestion(String cur){
    _countScore(cur);
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }
  void _countScore(String cur){
    if(_answers[_questionIndex]==cur){
      _score++;
      // print(_score);
    }

  }
  void _reset(){
    setState(() {
      _questionIndex=0;
      _score=0;
    });
    // print(_questionIndex);

  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex<_questions.length ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex : _questionIndex,
            questions     : _questions,
            countScore    :_countScore,)
            :
            Result(_reset,_score),




      ),
    );
  }
}
