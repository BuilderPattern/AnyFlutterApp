import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:first_flutter_app/first/RandomWords.dart';

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _save = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 16.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Welcome to Flutter"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.list), onPressed: clickMenuFunction)
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        // ignore: missing_return
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2;

          if (_suggestions.length <= index) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildItemRow(_suggestions[index]);
        });
  }

  Widget _buildItemRow(WordPair wordPair) {
    final _saveContain = _save.contains(wordPair);
    return ListTile(
        title: Text(
          wordPair.asPascalCase,
          style: _biggerFont,
        ),
        trailing: Icon(
          _saveContain ? Icons.favorite : Icons.favorite_border,
          color: _saveContain ? Colors.red : Colors.amber,
        ),
        onTap: () {
          setState(() {
            if (_saveContain) {
              _save.remove(wordPair);
            } else {
              _save.add(wordPair);
            }
          });
        });
  }

  void clickMenuFunction() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      final titles = _save.map((pair) {
        return new ListTile(
          title: Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
        );
      });

      final words = ListTile.divideTiles(context: context, tiles: titles).toList();

      return Scaffold(
        appBar: AppBar(
          title: Text("Save Word"),
        ),
        body: new ListView(children: words),
      );
    }));
  }
}
