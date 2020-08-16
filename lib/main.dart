import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("DiCEE")),
          backgroundColor: Colors.indigo,
        ),
        backgroundColor: Colors.yellow,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override

  Widget build(BuildContext context) {
    //leftDiceNumber = 5;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(6)+1;
                rightDiceNumber = Random().nextInt(6)+1;
              });
               // print('dice$leftDiceNumber');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          //SizedBox(width: 16.0,),
          Expanded(
            child:  FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6)+1;
                 rightDiceNumber = Random().nextInt(6)+1;
                });
                //print('Button-2 got pressed');
              },
                child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],

      ),
    );
  }
}
