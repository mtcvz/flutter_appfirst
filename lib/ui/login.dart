import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage>{
  TextEditingController mailController = TextEditingController(text: "enter mail address");
  TextEditingController passwordController = TextEditingController();
  String mail = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.continueAction,
              controller: mailController,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.send,
              obscureText: true,
              controller: passwordController,

            )
          ],
        ),
      )
    );
  }

}