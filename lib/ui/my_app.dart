import 'package:flutter/material.dart';
import 'package:flutter_appfirst/ui/resim_buton_turleri.dart';
import 'package:flutter_appfirst/ui/home_page.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
        ThemeData(primarySwatch: Colors.purple, accentColor: Colors.orange),
        home:MyHomePage(),/*Scaffold(
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
            body: ResimveButonTurleri()
        )*/
    );
  }
}