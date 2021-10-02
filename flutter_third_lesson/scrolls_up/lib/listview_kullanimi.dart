import 'package:flutter/material.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(
          index + 1, "Öğrenci adı ${index + 1}", "Öğrenci adı ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Öğrenci Listesi'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            var oAnkiOgrenci = tumOgrenciler[index];
            return Card(
              color: index % 2 == 0
                  ? Colors.orange.shade100
                  : Colors.purple.shade100,
              child: ListTile(
                onLongPress: () {
                  _alertDialogIslemleri(context, oAnkiOgrenci);
                },
                onTap: () {
                  print("eleman tıklandı : ${index + 1}");
                },
                title: Text(oAnkiOgrenci.isim),
                subtitle: Text(oAnkiOgrenci.soyisim),
                leading: CircleAvatar(
                  child: Text(oAnkiOgrenci.id.toString()),
                ),
              ),
            );
          },
          itemCount: tumOgrenciler.length,
        ));
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyisim),
                leading: CircleAvatar(
                  child: Text(ogr.id.toString()),
                ),
              ))
          .toList(),
    );
  }

  _alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(secilen.toString()),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text('Durmus' * 100),
                  Text('Durmus1' * 100),
                  Text('Durmus2' * 100),
                ],
              ),
            ),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('KAPAT')),
                  TextButton(onPressed: () {}, child: Text('TAMAM')),
                ],
              )
            ],
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);

  @override
  String toString() {
    // TODO: implement toString
    return 'İsim: $isim  Soyisim: $soyisim id: $id';
  }
}
