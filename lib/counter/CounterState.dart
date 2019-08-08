import 'package:first_flutter_app/counter/Counter.dart';
import 'package:first_flutter_app/counter/CounterDisplay.dart';
import 'package:first_flutter_app/counter/CounterIncrementor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CounterIncrementor(onPressed: _increment),
        CounterDisplay(count: _counter)
      ],
    );
  }

//  @override
//  Widget build(BuildContext context) {
//    return Row(
//      children: <Widget>[
//        RaisedButton(
//          onPressed: _increment,
//          child: Text("Click_Counter"),
//        ),
//        Text(
//          'Count: $_counter',
//          style: TextStyle(color: Colors.white),
//        ),
//      ],
//    );
//  }
}
