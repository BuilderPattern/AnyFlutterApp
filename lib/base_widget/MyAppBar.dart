import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
//      height: 90.0,
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue),

      child: AspectRatio(
        aspectRatio: 5 / 1,//宽高比
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.menu),
                tooltip: "Navigation menu",
                onPressed: null),
            Expanded(
              child: Container(
                child: Align(
//              alignment: Alignment.center,
                  alignment: Alignment(-0.6, 0), //对齐：竖直/水平方向的范围均为[-1,1]
                  child: widget,
                ),
              ),
            ),
            IconButton(
                icon: Icon(Icons.search), tooltip: "Search", onPressed: null),
          ],
        ),
      ),

//      child: Row(
//        children: <Widget>[
//          IconButton(
//              icon: Icon(Icons.menu),
//              tooltip: "Navigation menu",
//              onPressed: null),
//          Expanded(child: Container(
//            child: Align(
////              alignment: Alignment.center,
//              alignment: Alignment(-0.6, 0),//竖直/水平方向的范围均为[-1,1]
//              child: widget,
//            ),
//          ),),
//          IconButton(
//              icon: Icon(Icons.search), tooltip: "Search", onPressed: null),
//        ],
//      ),
    );
  }
}
