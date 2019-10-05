import 'package:flutter/material.dart';

//Define "root widget"
void main() => runApp(new MyApp());//one-line function
class HorizonalList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HorizonalListState();
  }
}
class HorizonalListState extends State<HorizonalList> {
  @override
  Widget build(BuildContext context) {
    // MediaQuery: kich thuoc man hinh chung ta dang dung
    final screenSize=MediaQuery.of(context).size;
    return new Scaffold(
      // full screen
      body: new Container(
        child: new ListView(
          scrollDirection: Axis.horizontal, // kieu horizontal
          shrinkWrap: true, // tu dong nhay qua ko can keo toi gan cuoi
          children: <Widget>[
            //Page 1
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.red,
              child: new Center(
                child: new Text(
                  'Page 1',
                  style: new TextStyle(
                    fontSize: 40.0,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            //Page 2
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.blue,
              child: new Center(
                child: new Text(
                  'Page 2',
                  style: new TextStyle(
                      fontSize: 40.0,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            //Page 3
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.green,
              child: new Center(
                child: new Text(
                  'Page 3',
                  style: new TextStyle(
                      fontSize: 40.0,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            //Page 4
            new Container(
              width: screenSize.width,
              height: screenSize.height,
              color: Colors.pink,
              child: new Center(
                child: new Text(
                  'Page 4',
                  style: new TextStyle(
                      fontSize: 40.0,
                      color: Colors.white
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    final materialApp = new MaterialApp(
      title: '',
      // ignore: strong_mode_invalid_cast_new_expr
      home: new HorizonalList(),
    );
    return materialApp;
  }
}