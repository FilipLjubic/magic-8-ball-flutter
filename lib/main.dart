import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: "Ask Me Anything",
        home: Home(),
      ),
    );

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int answer = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text(
          "Ask Me Anything",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: FlatButton(
          child: Image.asset('images/ball$answer.png'),
          onPressed: () => setState(() => answer = Random().nextInt(5) + 1),
        ),
      ),
    );
  }
}
