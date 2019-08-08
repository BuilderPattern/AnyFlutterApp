import 'package:first_flutter_app/base_widget/MyAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Enterance extends StatelessWidget {
  Enterance({this.list});

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("程序入口"),),
      // ignore: missing_return
      body: ListView.builder(itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        // ignore: missing_return
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          list.map((item) {
            return ListTile(
              title: Text(item.toString()),
            );
          });
        }));
      }),
    );
  }
}
