import 'package:flutter/material.dart';
import 'package:flutter_navigation/ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;
  const OgrenciDetay({required this.secilenOgrenci, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ogrenci Detay'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(secilenOgrenci.id.toString()),
            Text(secilenOgrenci.isim),
            Text(secilenOgrenci.soyisim),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
                //Navigator.popUntil(context, (route) => route.settings.name == '/redPage');
              },
              child: Text('En Başa Geri Dön'),
              style: ElevatedButton.styleFrom(primary: Colors.purple.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
