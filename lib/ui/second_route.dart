import 'package:flutter/material.dart';
import 'package:flutter_appfirst/ui/home_page.dart';

class SecondRoute extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Go Back"),
          color: Colors.blue,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      )
    );
  }
}