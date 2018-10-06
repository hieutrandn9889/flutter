import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  // hiệu ứng cho logo    
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;
  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 300));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      // chạy ngầm nền trắng rồi mới đến hình ảnh
      backgroundColor: Colors.white,
      body: new Stack(
        // zoom full screen
        fit: StackFit.expand, 
        children: <Widget>[
        new Image(
          image: new AssetImage("assets/1.jpg"),
          // responsive image with devices
          fit: BoxFit.cover,
          // làm mở ảnh thành màu đen
          colorBlendMode: BlendMode.darken,
          color: Colors.black87,
        ),
       new Column(
            // logo nằm ở trung tâm
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 140.0,
              ),
              new Form(
                child: new Theme(
                  // edit enter email and password sua mau và đường gạch chân khi đăng nhập vào
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    // thay doi size and color chữ username and password
                    inputDecorationTheme: new InputDecorationTheme(
                        labelStyle: new TextStyle(
                          color: Colors.teal,
                          fontSize: 20.0,
                      )
                    )
                  ),
                  child: new Container(
                    // padding email and password
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Email",
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Password",
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      // button login
                      new Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                      ),
                      new MaterialButton(
                        height: 50.0,
                        minWidth: 150.0,
                        color: Colors.green,
                        textColor: Colors.white,
                        child: new Icon(FontAwesomeIcons.signInAlt),
                        onPressed: () => {},
                        // hover button display red
                        splashColor: Colors.teal,
                      ),
                    ],
                  )
                  ),
                )
              )
            ],
          ),
      ]),
    );
  }
}