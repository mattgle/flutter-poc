import 'package:flutter/material.dart';
import 'package:flutter_poc/login/widgets/login_form.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("images/background.png"),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 180.0),
            child: Center(
              child: Image(
            image: new AssetImage("images/logo.png"),
          ))),
          LoginForm(),
          Container(
            padding: EdgeInsets.only(top: 140.0),
            child: Text("Designed, developed and used by woloxers"),
          )
        ],
      ),
    ));
  }
}
