import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[900],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int randomNumLeft = 1;
  int randomNumRight = 1;
  void setStateRandom(){
    setState(() {
      randomNumLeft = Random().nextInt(6)+1;
      randomNumRight = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setStateRandom();
              },
              child: Image.asset('images/dice$randomNumLeft.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setStateRandom();
              },
              child: Image.asset('images/dice$randomNumRight.png'),
            ),
          ),
        ],
      ),
    );
  }
}
