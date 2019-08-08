import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterIncrementor extends StatelessWidget {
  const CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text("Counter"),
    );
  }
}
