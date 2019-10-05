import 'package:flutter/material.dart';

void main() => runApp(new MyApp()); // one line function
class MyApp extends StatefulWidget{
  @override
  Widget build(BuildContext context){
    final materialApp = new MaterialApp(
      title: '',
      home: new Text("List with image and Text"),
    );
    return materialApp;
  }
}