import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'data.dart';
// quan ly state: StatefulWidget
class ListViewExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListViewExampleState();
  }
}
// khi state thay doi thi ham build dc goi va giao dien thay doi theo
class ListViewExampleState extends State<ListViewExample> {
  // mang cac object >> sao khi qua mang object do se thanh mang container
  List<Container> _buildListItemsFromFlowers(){
    // map: tao ra list doi tuong moi tu list doi tuong cu >> kieu doi tuong moi khac kieu doi tuong cu
    // list doi tuong flower >> doi tuong container >> anh xa
    int index = 0;
    return flowers.map((flower){
      var container = Container(
        // decoration: mau nen >> mau chia het cho 2 la chan 0xFFb0e0e6 nguoc lai 0xFF7ec0ee
        decoration: index % 2 == 0?
        new BoxDecoration(color: const Color(0xFFb0e0e6)):
        new BoxDecoration(
            color: const Color(0xFF7ec0ee)
        ),
        child: new Row(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.all(10.0),
              child: new CachedNetworkImage(  // CachedNetworkImage: load vao cache nhanh hon
                imageUrl: flower.imageURL,
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover, // tu dong dien du lieu vao anh
              ),
            ),
            new Column(
              // ben trai
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // name
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text(
                    flower.flowerName,
                    style: new TextStyle(
                        fontWeight:  FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black
                    ),
                  ),
                ),
                 // description
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text(
                    flower.description,
                    style: new TextStyle(
                        fontWeight:  FontWeight.normal,
                        fontSize: 10.0,
                        color: Colors.black
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
      index = index + 1;
      return container;
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children: _buildListItemsFromFlowers(),
    );
  }
}