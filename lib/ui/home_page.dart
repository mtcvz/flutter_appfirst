import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title; //widget stateless oldugunda final olmali
  MyHomePage({this.title});

  int counter = 0;

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              incrementCounter();
            });
          },
          child: Icon(Icons.add)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Butona basilma sayisi:"),
          Text(
            "${widget.counter}",
            style: TextStyle(fontSize: 24),
          )
        ],
      )),
    );
  }

  void incrementCounter() {
    widget.counter++;
    debugPrint("Sayac Degeri: ${widget.counter}");
  }
}
