import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My app",
    home: MyScaffold(),
  ));
}

// top screen
class MyAppBar extends StatelessWidget {
  // contructor
  MyAppBar({this.title}); // de dua vao widget
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, //float
      padding: const EdgeInsets.symmetric(
          horizontal: 8.0), // padding 2 ben nam ngang 8.0
      decoration: BoxDecoration(color: Colors.blue),
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

// center screen
class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          // nho myAppBar dung contructor
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello World'),
            ),
          )
        ],
      ),
    );
  }
}
