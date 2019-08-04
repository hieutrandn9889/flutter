import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // extents 2 phan: stateless: k thay doi trang thai and stateful: thay doi trang thai
  @override // cho build
  //Widget is for UI
  // text, image, icon, container giong div, textInput, row: widget chieu ngag, column: widget chieu doc
  // stack: css, scaffold: widget cha va layout co ban (navigation, appbar, back ...)
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: "Hello",
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"), // display text on taskbar
        ),
        body: Center(
          child: Text(wordPair.asUpperCase),
        ),
      ),
    );
  }
}
