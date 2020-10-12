import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class liste_turleri extends StatelessWidget {
  List<ogrenci> ogrenciler = [];

  @override
  Widget build(BuildContext context) {
    verileriGetir();
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            color: index % 2 == 0 ? Colors.red.shade200 : Colors.blue.shade200,
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.add),
              title: Text(ogrenciler[index].toString()),
              trailing: Icon(Icons.send),
              onTap: () {
                debugPrint("Secilen Eleman: $index");
                //toastMesaj(index, context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ListeDetay(ogrenciler[index]._aciklama)),
                ).then((value) => debugPrint("Donus : $value"));
              },
              onLongPress: () {
                debugPrint("Basilan Eleman: $index");
                alertDialogGoster(index, context);
              },
            ),
          );
        });
  }

  void verileriGetir() {
    ogrenciler = List.generate(20,
        (index) => ogrenci("Ogrenci $index Isim", "Ogrenci $index Aciklama"));
  }

  void toastMesaj(int index, BuildContext context) {
    Toast.show(ogrenciler[index].toString(), context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
  }

  void alertDialogGoster(int index, BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Uzun Basilma"),
            content: Text(ogrenciler[index].toString()),
            actions: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text("Tamam"),
                    color: Colors.green,
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text("Kapat"),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          );
        });
  }
}

class ogrenci {
  String _isim;
  String _aciklama;

  ogrenci(this._isim, this._aciklama);

  @override
  String toString() {
    return "Isim: $_isim , Aciklama: $_aciklama";
  }
}

class ListeDetay extends StatelessWidget {
  String aciklama;

  ListeDetay(this.aciklama);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detay"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(aciklama),
          RaisedButton(
            color: Colors.redAccent,
            child: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, true);
            },
          )
        ],
      )),
    );
  }
}
