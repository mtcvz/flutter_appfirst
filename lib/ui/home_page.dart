import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appfirst/ui/second_route.dart';

class MyHomePage extends StatefulWidget {
  final String title; //widget stateless oldugunda final olmali
  MyHomePage({this.title});

  int counter = 0;

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //fixedColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                title: Text("Duyuru Kanallari")),
            BottomNavigationBarItem(
                icon: Icon(Icons.history),
                title: Text("Bildirimler")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text("Profil")),
          ]
      ),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            /*setState(() {
              _incrementCounter();
            });*/
            Navigator.push(context,MaterialPageRoute(builder: (context) => SecondRoute() ));
          },
          child: Icon(Icons.add)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("Arttir"),
            onPressed: _incrementCounter,
            color: Colors.green,
          ),
          Text(
            "Butona basilma sayisi:",
            // ignore: deprecated_member_use
            style:
                Theme.of(context).textTheme.display2.copyWith(fontSize: 18.0),
          ),
          Text(
            "${widget.counter}",
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.display2.copyWith(
                color: widget.counter < 0 ? Colors.red : Colors.green,
                fontFamily: "Times New Roman",
                fontSize: 36.0),
          ),
          RaisedButton(
            child: Text("Azalt"),
            color: Colors.red,
            onPressed: _decrementCounter,
          )
        ],
      )),
    );
  }

  void _incrementCounter() {
    setState(() {
      widget.counter++;
      debugPrint("Sayac Degeri: ${widget.counter}");
    });
  }

  void _decrementCounter() {
    setState(() {
      widget.counter--;
      debugPrint("Sayac Degeri: ${widget.counter}");
    });
  }
}
