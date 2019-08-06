import 'package:flutter/material.dart';
void main() {
 runApp(
   MyApp()
 );
}

class MyAppBar extends StatelessWidget{

  // contructor
  MyAppBar({this.title}); // de dua vao widget
  final Widget title;
  
  @override
  Widget build(BuildContext context){
    return Container(
      height: 56.0, //float
      padding: const EdgeInsets.symmetric(horizontal: 8.0), // padding 2 ben nam ngang 8.0
      decoration: BoxDecoration(color: Colors.red),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigation menu",
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null,
          )
        ],
      ),
    );
    
  }
}

class MyApp extends StatelessWidget{
 @override
 Widget build(BuildContext context){
   return Center(
     child: Text('Hello world112122', textDirection: TextDirection.ltr), // chu hien thi trai sang phai
   );
 }
}