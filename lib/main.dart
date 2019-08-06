import 'package:first_flutter_app/RandomWords.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Title"),
        ),
        body: Center(
//          child: Text("Hello Flutter"),
          child: RandomWords(),
        ),
      ),
    );
  }
}