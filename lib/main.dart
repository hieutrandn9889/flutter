import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Hieu tran demo flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alert message !"),
          content: Text("Welcome to ExecuteAutomation " + _counter.toString(),
              key: ValueKey("alert_text")),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text(
                "Close",
                key: ValueKey("close_button"),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:
          new AppBar(title: new Text(widget.title),
          key: ValueKey('app_bar')),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            new Text(
              'You have clicked the button this many times: Hieutran',
            ),

            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display2,
              key: ValueKey("counterText"),
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                new RaisedButton(
                  key: Key("add"),
                  padding: const EdgeInsets.all(9.0),
                  textColor: Colors.white,
                  color: Colors.blue,
                  // onPressed: () {
                  //   _showDialog();
                  // },
                  onPressed: _incrementCounter,
                  child: new Text("ADD"),
                ),
                
                new RaisedButton(
                  key: Key("subtract"),
                  onPressed: _decrementCounter,
                  textColor: Colors.white,
                  color: Colors.red,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("SUBTRACT",),
                ),
              ],
            )
          ],
        ),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
