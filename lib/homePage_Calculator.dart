import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var numb1, numb2, sum="0";
  var warning;

  void cong(){
    setState(() {
        numb1 = int.parse(text1.text);
        numb2 = int.parse(text2.text);
        sum = (numb1 + numb2).toString();
        });
  }
  void tru(){
    setState(() {
        numb1 = int.parse(text1.text);
        numb2 = int.parse(text2.text);
        sum = (numb1 - numb2).toString();
        });
  }
  void nhan(){
    setState(() {
        numb1 = int.parse(text1.text);
        numb2 = int.parse(text2.text);
        sum = (numb1 * numb2).toString();
        });
  }
  void chia(){
    setState(() {
        numb1 = int.parse(text1.text);
        numb2 = int.parse(text2.text);
        if(numb2 == 0){
          clear();
          sum = "Khong thuc hien dc";
        }else{
          sum = (numb1 ~/ numb2).toString();
        }
        });
  }

  void clear(){
      setState(() {
              text1.clear() ;
              text2.clear();
              sum = "0";
            });
  }
  final text1 = TextEditingController();
  final text2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
           title: new Text("Calculator"),
         ),
      body: new Container(
         padding: const EdgeInsets.all(40.0),             
           child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             new Text(
               "Output: $sum",
               style: new TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20.0,
                 color: Colors.red
               ),
             ),
             new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 1"),
              controller: text1,
             ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter Number 2"),
                controller: text2,
                
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ), 
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("+"),
                    color: Colors.blue,
                    onPressed: () {cong();},
                    splashColor: Colors.red,
                  ),
                  new MaterialButton(
                    child: new Text("-"),
                    color: Colors.blue,
                    onPressed: () {tru();},
                    splashColor: Colors.red,
                  )
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ), 
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("*"),
                    color: Colors.blue,
                    onPressed: () {nhan();},
                    splashColor: Colors.red,
                  ),
                  new MaterialButton(
                    child: new Text("/"),
                    color: Colors.blue,
                    onPressed: () {chia();},
                    splashColor: Colors.red,
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("Clear"),
                    color: Colors.blue,
                    onPressed: (){clear();},
                    splashColor: Colors.teal,
                  )
                ],
              ),
           ],
         ),
         
       ),
    );
  }
}
