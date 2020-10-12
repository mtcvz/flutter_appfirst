import 'package:flutter/material.dart';

class A_Sayfasi extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("A Sayfasi"),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("A Sayfasi"),
          ],
        ),
      ),
    );
  }
}