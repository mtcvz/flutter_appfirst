import 'package:flutter/material.dart';

class ResimveButonTurleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
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
        RaisedButton(
          child: Text("Buton"),
          color: Colors.purple,
          textColor: Colors.white,
          onPressed: butonFonksiyonu,
        ),
        IconButton(
          icon: Icon(Icons.account_box),
          onPressed: ()=>debugPrint("2.buton calisti"),
        ),
        FlatButton(onPressed: (){},child: Text("Flat Button"),)
      ],
    );
  }
}

void butonFonksiyonu(){
  debugPrint("Buton calisti");
}