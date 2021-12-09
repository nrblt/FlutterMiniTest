import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const ({Key? key}) : super(key: key);
  final VoidCallback reset;
  final int score;
  Result(this.reset,this.score);
  @override
  Widget build(BuildContext context) {
    return Center(
          child:Column(
              children: [
                Text("HEEEY"),
                Text(score.toString()),
                RaisedButton(
                  onPressed:reset,
                  color:Colors.blue ,
                  child: Text('Reset'),
                ),
              ]

          ),

        );
  }
}
