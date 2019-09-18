import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    // card
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.account_box, color: Colors.blue, size: 26.0),
            title: new Text( "Tran Van Hieu", 
              style: new TextStyle( 
                fontWeight: FontWeight.w400
              ),
            ),
            subtitle: new Text("Software Engineer"),
          ),
          new Divider(color: Colors.blue,indent: 16.0,),
          new ListTile(
            leading: new Icon(Icons.email, color: Colors.blue, size: 26.0),
            title: new Text("hieutrandn9889@gmail.com",
              style: new TextStyle(
                fontWeight: FontWeight.w400
              ),
            ),
          ),
          new Divider(color: Colors.blue,indent: 16.0,),
           new ListTile(
            leading: new Icon(Icons.phone, color: Colors.blue, size: 26.0),
            title: new Text("+84-0934204911",
              style: new TextStyle(
                fontWeight: FontWeight.w400
              ),
            ),
          ),
        ],
      ),
    );
    final sizeBox = new Container(
      margin: new EdgeInsets.only(left: 10.0, right: 10.0),
      child: new SizedBox(
        height: 230.0,
        child: card,
      ),
    );
    final center = new Center(
      child: sizeBox,
    );
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Card example"),
        ),
        body: center,
      ),
     
    );
  }
}