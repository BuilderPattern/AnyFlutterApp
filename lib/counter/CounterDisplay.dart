
import 'package:flutter/widgets.dart';

class CounterDisplay extends StatelessWidget{

  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }

}