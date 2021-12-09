import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;
  final Function countScore;
  Answer(this.selectHandler,this.answer,this.countScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity ,
      child:RaisedButton(
        color:Colors.blue ,
        textColor: Colors.white,
        child: Text(answer),
        onPressed:(){
          // countScore(answer);
          selectHandler(answer);
      },
    ),
    );
    }
  }

