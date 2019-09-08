import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page"),
        ),
        body: new Center(
         child: RandomWords(),
        ),
      ),
    );
  }
}

// khoi tao RandomWordsState
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords>{
  final _words = <WordPair>[]; // khai bao mang

  @override
  Widget build(BuildContext context){
    // final wordPair = WordPair.random();
    // return Text(wordPair.asUpperCase);
    return ListView.builder(itemBuilder: (context, index){
      if(index >= _words.length){
        _words.addAll(generateWordPairs().take(10)); // index lon hon mang thi lay 10 elements >> load 10 elements
      }
      return _buildRow(_words[index]);
    });
  }
}
 
Widget _buildRow (WordPair wordPair){
  return ListTile(
    title: Text(
      wordPair.asPascalCase,
      style: const TextStyle(fontSize:18.0)
    ),
  );
}
