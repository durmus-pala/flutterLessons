import 'package:flutter/material.dart';
import 'package:flutter_navigation/route_generator.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;
    print("Eleman Sayısı alındı: $elemanSayisi");
    List<Ogrenci> tumOgrenciler = List.generate(
      elemanSayisi,
      (index) =>
          Ogrenci(index + 1, 'İsim: ${index + 1}', 'Soyisim: ${index + 1}'),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenci Listesi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              var secilen = tumOgrenciler[index];
              Navigator.pushNamed(context, '/ogrenciDetay', arguments: secilen);
            },
            leading: CircleAvatar(
              child: Text(tumOgrenciler[index].id.toString()),
            ),
            title: Text(tumOgrenciler[index].isim),
            subtitle: Text(tumOgrenciler[index].soyisim),
          );
        },
        itemCount: elemanSayisi,
      ),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
