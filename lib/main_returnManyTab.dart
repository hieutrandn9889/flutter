import 'package:flutter/material.dart';
import 'tab1.dart';
import 'tab2.dart';
import 'tab3.dart';
import 'tab4.dart';

void main() =>  runApp(new MyApp()); 

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final tabController = new DefaultTabController(
      length: 4,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Social Network"),
          bottom: new TabBar(
            // thanh màu đỏ
            indicatorColor: Colors.red,
            // chiều cao của thanh
            indicatorWeight: 2.0,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home), text: "Home",),
              new Tab(icon: new Icon(Icons.group), text: "Group",),
              new Tab(icon: new Icon(Icons.chat_bubble), text: "Chat",),
              new Tab(icon: new Icon(Icons.cloud_queue), text: "Cloud",),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Tab1(),
            new Tab2(),
            new Tab3(),
            new Tab4(),
          ],
        ),
      ),
    ); 
    return new MaterialApp(
      title: "Tabs example",
      home: tabController,
    );
  }
}