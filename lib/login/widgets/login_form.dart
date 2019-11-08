import 'package:flutter/material.dart';

import '../login.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(40.0),
        decoration: new BoxDecoration(
            color: Colors.white60,
            borderRadius: new BorderRadius.all(const Radius.circular(20.0))),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: "User"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Password"),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()), // Add the real screen
                  );
                },
                child: Text("Login"),
              ),
            )
          ],
        ));
  }
}
