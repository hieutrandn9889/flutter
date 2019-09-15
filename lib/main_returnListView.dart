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
  // final k thay doi dc but những giá trị gán bên trong vẫn thay đổi
  final _words = <WordPair>[]; // words displayed in ListView, 1 row contains 1 word, _ dùng trong class
  // check xem có bị duplicate items k
  final _checkWords = new Set<WordPair>(); // set contains "no duplicate items"
  @override
  Widget build(BuildContext context){
    // hàm build đc xây dựng để khi StatefulWidget thay đổi thì hàm build sẽ đc gọi
    // làm giao diện cho StatefulWidget 
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List of English words"),
      ),
      body: new ListView.builder(itemBuilder: (context, index){
      // itemBuilder: 1 function
      //context: con trỏ hiện tại dòng lệnh đang sử dụng >> biết đang ở class nào
      // index = 0,1,2,3
      // check do dai cua mang
      if (index >= _words.length) {
        // keo xuong tận cùng màn hình sẽ thêm 10 phần tử
        _words.addAll(generateWordPairs().take(10));
      } 
      return _buildRow(_words[index], index); 
      // _buildRow: là từng hàng 1 trong widget 
      }),
    );
  }

  Widget _buildRow(WordPair wordPair, int index){
  // chia het cho 2 mau do nguoc lai xanh
  final textColor = index % 2 == 0 ? Colors.red: Colors.blue;
  final isChecked = _checkWords.contains(wordPair);
   // widget cho mỗi row
    return new ListTile(
      // leading = left, trailing = right 
      leading: new Icon(
        isChecked ? Icons.check_box: Icons.check_box_outline_blank,
        color: textColor,
      ),
      // ListTile từng hàng 1 trong listview
      title: new Text(
        wordPair.asUpperCase,
        style: new TextStyle(
          fontSize: 18.0, 
          color: textColor
        ),
      ),
      // tương tác
      onTap: (){
        setState(() {
          // setState: có hàm thay đổi bên trong state
          // StatefulWidget: sẽ đc reder lại để, build lại giao diện đó
          if (isChecked) {
            _checkWords.remove(wordPair); // remove item in a set
          } else {
            _checkWords.add(wordPair);
          }
        });
      },
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
      home: new RandomEnglishWords(),
    );
  }
}