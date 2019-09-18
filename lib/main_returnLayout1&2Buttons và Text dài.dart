import 'package:flutter/material.dart';

void main() =>  runApp(new MyApp()); 

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
    //titleSection
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0), // top, right, bottom, left
      child: new Row(
        children: <Widget>[
          // tao column cho 2 phan trai va 1 phan ben phai
          new Expanded(
            child: new Column(
              // column >> crossAxisAlignment
              crossAxisAlignment: CrossAxisAlignment.start, // start: ben trai, end: ben phai
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text("Programing tutorials Channel", 
                  style: new TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 18.0,
                  )),
                ),

                new Text(
                  "This channel contains tutorial videos in Flutter" "Automation testing", 
                  style: new TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18.0,
                  )
                ),
              ],
            ),
          ),
          // trai tim
          new Icon(Icons.favorite, color: Colors.red),
          new Text(
            " 100",
            style: new TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );

    //buildButton
    Widget buildButton(IconData icon, String buttonTitle){
      final Color tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
          // phai bo vao container de padding
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(
              buttonTitle, 
              style: new TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: tintColor,
              ),
            ),
          )
        ],
      );
    }

    //fourButtonsSection
    Widget fourButtonsSection = new Container(
      child: new Row(
        // Row >> mainAxisAlignment
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // spaceEvenly: chia deu moi ben
        //mainAxisAlignment: MainAxisAlignment.spaceAround, // spaceAround: right + left = space 
        children: <Widget>[
          // build in a separated function
          buildButton(Icons.home, "Home"),
          buildButton(Icons.arrow_back, "Back"),
          buildButton(Icons.arrow_forward, "Next"),
          buildButton(Icons.share, "Share"),
        ],
      ),
    );

    //bottomTextSection
    final bottomTextSection = new Container(
      padding: const EdgeInsets.all(20.0),
      child: new Text(
        '''I am Tran Van Hieu, I live in DN, Vietnam. I create this channel which contains videos in Swift programming language, python, NodeJS, Angular, Typescript, ReactJS, React Native, ios and android programming, Kotlin programming, new technologies' overviews. These videos will help people learn latest programming language and software framework. They will be also very useful for their work or business. My channel's languages are English and Vietnamese.''',
        style: new TextStyle(
          fontSize: 18.0,
          color: Colors.grey[850],
        ),
      ),
    );  
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter app"),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'imgs/1.png',
              fit: BoxFit.cover, // ngang voi doc 
            ),
            titleSection,
            fourButtonsSection,
            bottomTextSection
          ],
        ),
      ),
    );
  }
}

