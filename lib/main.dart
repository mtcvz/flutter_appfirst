import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.purple, accentColor: Colors.orange),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Flutter Examples",
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("Tiklandi");
            },
            child: Icon(Icons.add, color: Colors.white),
          ),
          body: Column(
            children: <Widget>[
              Text(
                "Resim ve Buton Turleri",
                style: TextStyle(fontSize: 24.0),
              ),
              IntrinsicHeight(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Container(
                    color: Colors.red.shade200,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/images/example.png"),
                        Text("Asset Image"),
                      ],
                    ),
                  ),),
                  Expanded(
                    child:Container(
                    color: Colors.red.shade200,
                    child: Column(
                      children: <Widget>[
                        //Image.network("https://mediatrend.mediamarkt.com.tr/wp-content/uploads/2017/02/2017_subat_03.jpg"),
                        FadeInImage.assetNetwork(placeholder: "assets/images/example.png",  // fadeinImage foto yuklenene kadar gecici fotoyu tutar.
                            image: "https://mediatrend.mediamarkt.com.tr/wp-content/uploads/2017/02/2017_subat_03.jpg"),
                        Text("Network Image"),
                      ],
                    ),
                  ),),
                  Expanded(
                    child:Container(
                    color: Colors.red.shade200,
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/example.png"),
                        ),
                        Text("Circle Avatar"),
                      ],
                    ),
                  ),
                  ),
                ],
               ),
              ),
            ],
          )))); //runapp
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
