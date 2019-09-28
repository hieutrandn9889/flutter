import 'package:flutter/material.dart';
import 'urlImage.dart';
void main() =>  runApp(new MyApp()); 
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Login page",
      home: URLImage(),
    );
  }
}