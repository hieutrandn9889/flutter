import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // thêm biến wordPair
    final wordPair = WordPair.random(); 
    
    return new MaterialApp(
      title: "My App",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page"),
        ),
        body: new Center(
          // child: new Text("Hello world"),
          // random 1 từ viết hoa
          child: new Text(wordPair.asUpperCase),
        ),
      ),
    );
  }
}
