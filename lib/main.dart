import 'dart:ffi';

import 'package:flutter/material.dart';
import 'ui/my_app.dart';

void main() {
  var myApp = new MyApp();
  runApp(myApp); //runapp
}


/*void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue, accentColor: Colors.redAccent),
    home: Scaffold(
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
      appBar: AppBar (title: Text('MY APP',style: TextStyle(color: Colors.white,), ),),
      floatingActionButton: FloatingActionButton(
        onPressed: () { debugPrint("buton tiklandi"); },
        child: Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        color: Colors.purple,
        //alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround ,
          children: <Widget>[
            Expanded(
            child:Icon(Icons.access_alarm),),
            Expanded(
              child:Icon(Icons.access_alarm),),
            Expanded(
              child:Icon(Icons.access_alarm),),
          ],
        )
      )
    ),
  ));
}
*/
