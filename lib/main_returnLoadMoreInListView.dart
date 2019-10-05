import 'package:flutter/material.dart';

void main() => runApp(new MyApp()); // one line function
class InfinitiveListViewState extends State<InfinitiveListView>{
  var items = new List<String>.generate(
    // items chứa list string
    // generate: tự xin ra 20 string
    20, 
    (i) => "Item $i" //i ở đây là chỉ số từng string 
  );
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Container(
        // ListView có builder là 1 static function của class ListView
        child: new ListView.builder(
          itemCount: items.length+1, // tổng số các phần tử trong ListView, +1 để thêm cái nút load more cuối cùng
          // context là trỏ đến class hiện tại chứa hàm đó, index: phần tử trong list
          itemBuilder: (context, index){
            // if index==items.length >> RaisedButton nguoc lai ListTile
            final widgetItem = (index==items.length)?
            // "Load more" button display (toán tử 3 ngôi)
              new RaisedButton(
                child: const Text(
                  "Load more ...",
                  // trong button k dung new cho TextStyle
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                color: Colors.blue,
                splashColor: Colors.red,
                elevation: 4.0,
                onPressed: (){
                  // tạo thêm 20 items
                  var nextItems = new List<String>.generate(20, (i){
                    // cộng nối tiếp các phần tử trước
                    var itemId = i+items.length;
                    return "Item $itemId";
                  });
                  // items = setState thay đổi nên gọi hàm builder sẽ thay đổi theo
                  setState(() {
                    items.addAll(nextItems);
                  });
                }):
              new ListTile(
                 title: new Text('${items[index]}'),
               );
            return widgetItem;
          }
        ),
      ),
    );
  }
}

class InfinitiveListView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InfinitiveListViewState();
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final matterialApp = new MaterialApp(
      title: '',
      home: InfinitiveListView(),
    );
    return matterialApp;
  }
}