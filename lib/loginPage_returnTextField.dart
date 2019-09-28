import 'package:flutter/material.dart';
import 'user.dart';
class LoginPageState extends State<LoginPage>{
  // user: mutable thuộc tính có thể thay đổi cho StatefulWidget
  final User user = new User(); // đây là 1 object trống
  // khi gõ ký tự trong trường TextField thì nó sẽ cập nhật vào trong user
  // để thay dổi đối tượng này dùng hàm setState

  @override
  Widget build(BuildContext context){
    // Username
    final TextField _txtUserName = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your username',// == placehoder
        contentPadding: new EdgeInsets.all(10.0),
      ),
      keyboardType: TextInputType.text, // input in textbox
      autocorrect: false, // k goi y khi danh tu vao
      // thay đổi khi gõ từng phím bấm
      onChanged: (text) {
          setState((){
            this.user.userName = text;
          });
      },
    );

    // Email
    final TextField _txtEmail = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your email address',// == placehoder
        contentPadding: new EdgeInsets.all(10.0),
      ),
      keyboardType: TextInputType.emailAddress, // input in textbox
      autocorrect: false, // k goi y khi danh tu vao
      // thay đổi khi gõ từng phím bấm
      onChanged: (text) {
          setState((){
            this.user.email = text;
          });
      },
    );

    // Password
    final TextField _txtPassword = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your password',// == placehoder
        contentPadding: new EdgeInsets.all(10.0),
      ),
      keyboardType: TextInputType.text, // input in textbox
      autocorrect: false, // k goi y khi danh tu vao
      obscureText: true,  // **** for password
      // thay đổi khi gõ từng phím bấm
      onChanged: (text) {
          setState((){
            this.user.password= text;
          });
      },
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login Page"),
      ),
      body: new Column(
        // nằm giữa màn hình
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           //Username
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
            // mau nen background
            decoration: BoxDecoration(
              color: new Color.fromARGB(255, 240, 240, 240),
              border: new Border.all(
                width: 1.2, color: Colors.black12
              ),
              // bo tron
              borderRadius: const BorderRadius.all(const Radius.circular(6.0))
            ),
            child: _txtUserName,
          ),

          //Email
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20),
            // mau nen background
            decoration: BoxDecoration(
              color: new Color.fromARGB(255, 240, 240, 240),
              border: new Border.all(
                width: 1.2, color: Colors.black12
              ),
              // bo tron
              borderRadius: const BorderRadius.all(const Radius.circular(6.0))
            ),
            child: _txtEmail,
          ),

          //Password
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20),
            // mau nen background
            decoration: BoxDecoration(
              color: new Color.fromARGB(255, 240, 240, 240),
              border: new Border.all(
                width: 1.2, color: Colors.black12
              ),
              // bo tron
              borderRadius: const BorderRadius.all(const Radius.circular(6.0))
            ),
            child: _txtPassword,
          ),
          
          // Login button
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20),
             // thẻ row cho các btn từ trái sang phải
            child: new Row(
              children: <Widget>[
                //Expanded: kéo dài btn full màn hình chìu ngang
                new Expanded(
                  child: new RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: new Text("Login"),
                    onPressed: (){
                        print('userName: ${user.userName}, '
                        'email: ${user.email}'
                        ', password : ${user.password}');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  } 
}

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}