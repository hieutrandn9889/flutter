import 'package:flutter/material.dart';

void main() =>  runApp(new MyApp()); 

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Add custom fonts"),
        ),
        body: new Column(
          // cot nen dung mainAxisAlignment cach tung hang
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: <Widget>[
            new Text("This is Pacifico font",
            style: new TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 32.0
            ),),
            new Text("This is YanoneKaffeesatz Bold font",
              style: new TextStyle(
                  fontFamily: 'YanoneKaffeesatz Bold',
                  fontSize: 32.0
              ),),
            new Text('This is YanoneKaffeesatz ExtraLight font',
              style: new TextStyle(
                  fontFamily: 'YanoneKaffeesatz ExtraLight',
                  fontSize: 30.0
              ),),
          ],
        ),
      )
    );
  }
}