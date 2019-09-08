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
  @override
  Widget build(BuildContext context){
    final wordPair = WordPair.random();
    return Text(wordPair.asUpperCase);
  }
}

