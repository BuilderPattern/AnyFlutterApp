
import 'package:english_words/english_words.dart';
import 'package:first_flutter_app/base_widget/MyAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[

          MyAppBar(
            widget:Text(
              "Example title",
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
//          Expanded(child: Center(
//            child: Text("Hello Word"),
//          ))
          Expanded(child: Center(
            child: ListView.builder(itemBuilder: buildListView)
          ))
        ],
      ),
    );
  }

  final list = <WordPair>[];
  Widget buildListView(BuildContext context, int i) {
    final index = i~/2;
    if(index >= list.length){
      list.addAll(generateWordPairs().take(10));
    }
    return ListTile(
      title: Text(list[index].asPascalCase),
      trailing: Icon(Icons.build, color: Colors.red,),
    );
  }
}