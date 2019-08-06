
import 'package:english_words/english_words.dart';
import 'package:first_flutter_app/RandomWords.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RandomWordsState extends State<RandomWords>{

  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
//    final wordPair = WordPair.random();
//    return Text(wordPair.asPascalCase);
  return _buildSuggestions();
  }

  Widget _buildSuggestions(){
    return ListView.builder(itemBuilder: (context, i){
      if(i.isOdd) return Divider();
    final index = i ~/ 2;
    if(index >= _suggestions.length){
      _suggestions.addAll(generateWordPairs().take(10));
    }
    return _buildRowItem(_suggestions[index]);
    });
  }
  Widget _buildRowItem(WordPair wordPair) {
    return ListTile(
      title: Text(wordPair.asPascalCase, style: _biggerFont,),
    );
  }
}

