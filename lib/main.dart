import 'package:english_words/english_words.dart';
import 'package:first_flutter_app/Enterance.dart';
import 'package:first_flutter_app/base_widget/MyAppBar.dart';
import 'package:first_flutter_app/base_widget/MyScaffold.dart';
import 'package:first_flutter_app/first/RandomWords.dart';
import 'package:first_flutter_app/shop/Product.dart';
import 'package:first_flutter_app/shop/ShoppingList.dart';
import 'package:flutter/material.dart';

import 'counter/Counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    //first
//    return MaterialApp(
//      title: 'Welcome to Flutter',
//      home: new RandomWords(),
//    );

//    //base_widget
//    return MaterialApp(
//      title: 'Welcome to Flutter',
//      home: MyScaffold(),
//    );

//    //counter
//    return MaterialApp(
//      title: "Counter",
//      home: Counter(),
//    );

//    //shop
//    return MaterialApp(
//      title: "ShopingApp",
//      home: ShoppingList(
//        products: <Product>[
//          Product(name: "Book"),
//          Product(name: "Fruit"),
//          Product(name: "Mechine"),
//        ],
//      ),
//    );

    return MaterialApp(
      home: Enterance(
        list: [
          "First",
          "Base_Widget",
          "Counter",
          "Shop",
        ],
      ),
    );
  }
}
