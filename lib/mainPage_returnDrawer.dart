import 'package:flutter/material.dart';
class MainPageState extends State<MainPage>{
  @override
  var title = '';
  // return 1 doi tuong
  Drawer _buildDrawer(context){
    return new Drawer(
      //ListView
      child: new ListView(
        // tran man hinh mau xanh
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader: top header
          new DrawerHeader(
            //Container : margin or padding
            child: new Container(
              // column
              child:  new Column(
                // khoang cach dong
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // ben trai
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // image
                  new Image.asset(
                    'imgs/2.jpg',
                    width: 100.0,
                    height: 100.0,
                    // dang vuong image
                    fit: BoxFit.cover,
                  ),
                  // text
                  new Text('Tran Van Hieu',
                  style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  // text
                  new Text('Software Developer',
                  style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
            ),
            // mau nen header
              decoration: new BoxDecoration(
                color: Colors.blue
              ),
          ),
          new ListTile(
            leading: new Icon(Icons.photo_album),
            title: new Text('Photo'),
            onTap: (){
              setState((){
                this.title = "This is Photo page";
              });
              // kich vao photo bien mat
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.notifications),
            title: new Text('Notifications'),
            onTap: (){
              setState((){
                this.title = "This is Notifications page";
              });
              // kich vao Notifications bien mat
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.settings),
            title: new Text('Settings'),
            onTap: (){
              setState((){
                this.title = "This is Settings page";
              });
              // kich vao Settings bien mat
              Navigator.pop(context);
            },
          ),
          new Divider(
            color: Colors.black45,
            indent: 16.0,
          ),
          new ListTile(
            title: new Text('About us'),
            onTap: (){
              setState((){
                this.title = "This is About us page";
              });
              // kich vao About us bien mat
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: new Text('Privacy'),
            onTap: (){
              setState((){
                this.title = "This is Privacy page";
              });
              // kich vao Privacy bien mat
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer in Flutter"),
      ),
      body: new Center(
        child: new Text(this.title, style: new TextStyle(fontSize: 25.0)),
      ),
      drawer: _buildDrawer(context),
    );
  }
}

class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainPageState();
  }
}