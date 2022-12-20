import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return QuestionScreenState();
  }

}

class QuestionScreenState extends State<QuestionScreen>{
  bool buttonClick = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState((){
              buttonClick = !buttonClick;
            });
          },
          child: Text(buttonClick ? "Completed" : "Complete"),
        ),
      ),
    );
  }

}