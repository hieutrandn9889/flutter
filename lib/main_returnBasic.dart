import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// để my app là chính thì phải đưa vào hàm main
// gọi hàm runApp và truyền vào object mới khởi tạo
// one line function

void main() =>  runApp(new MyApp()); 
// Những thuộc tính or widget thay đổi liên tục
class RandomEnglishWords extends StatefulWidget{
  // giao diện thay đổi khi thuộc tính thay đổi >> thuộc tính nằm trong class StatefulWidget
  @override
  State<StatefulWidget> createState() {
    // return về 1 đối tượng có kiểu state
    // state nơi chứa các thuộc tính >> thuộc tính thay đổi >> widget cũng sẽ thay đổi
    return new RandomEnglishWordsState();
  }
}
// create state
class RandomEnglishWordsState extends State<RandomEnglishWords>{
  @override
  Widget build(BuildContext context){
    // hàm build đc xây dựng để khi StatefulWidget thay đổi thì hàm build sẽ đc gọi
    // làm giao diện cho StatefulWidget 
    final wordPair = new WordPair.random();
    return new Text(
      wordPair.asLowerCase,
      style: new TextStyle(fontSize: 22.0),
    );
  }
}

class MyApp extends StatelessWidget{
  // giao diện cấu tạo nhiều thành phần or component >> widget
  // tương đương web: thẻ H1,2 div
  @override
  Widget build(BuildContext context){
    // hàm build sẽ gọi khi giao diện thay đổi or lần đầu cho giao diện show lên
    // hàm build có từ lớp cha (StatelessWidget) nên dùng override >> để kế thừa
    // hàm build để xây dựng giao diện (head để ở đâu, text nằm chổ nào)
 
    return new MaterialApp(
      // MaterialApp >> 1 widget >> material design
      title: "This is my first Flutter app",
      home: new Scaffold(
        appBar: new AppBar(
          // AppBar =  header
          title: new Text("This is header's title"),
        ),
        body: new Center(
          // child: new Text("This is at the body's center"),
          child:new RandomEnglishWords(),
        ),
        
      ),
    );
  }
}