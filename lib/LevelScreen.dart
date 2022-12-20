import 'package:flutter/material.dart';
import 'package:provider_library_demo/QuestionScreen.dart';

import 'Level.dart';

class LevelScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LevelScreenState();
  }
}


class LevelScreenState extends State<LevelScreen>{
 List<Level> levelList = [];

  @override
  void initState() {
    // TODO: implement initState
    levelList = List.generate(100, (index) => Level(index+1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("LevelScreen"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,mainAxisSpacing: 10,crossAxisSpacing: 10), itemBuilder: (context,index)=>GestureDetector(onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionScreen()));
          },child: Container(color: levelList[index].isCompleted ? Colors.black : Colors.black26,child: Center(child: Text("${levelList[index].levelNo}")),)),itemCount: levelList.length,)),
    );
  }

}