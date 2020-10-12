import 'package:flutter/material.dart';

import 'a_sayfasi.dart';


class Navigation extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigasyon Islemleri"),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("A'ya Git"),
              color: Colors.green,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: ((context) => A_Sayfasi())
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
