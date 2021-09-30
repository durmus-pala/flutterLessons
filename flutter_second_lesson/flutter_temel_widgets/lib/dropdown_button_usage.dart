import 'package:flutter/material.dart';

class DropdownButtoKullanimi extends StatefulWidget {
  DropdownButtoKullanimi({Key? key}) : super(key: key);

  @override
  _DropdownButtoKullanimiState createState() => _DropdownButtoKullanimiState();
}

class _DropdownButtoKullanimiState extends State<DropdownButtoKullanimi> {
  String? _secilenSehir = null;
  List<String> _sehirler = ['Ankara', 'İzmir', 'Bursa', 'İstanbul', 'Muğla'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text('Şehir Seçiniz'),
        icon: Icon(Icons.arrow_downward),
        /*items: [
          DropdownMenuItem(
            child: Text('Ankara Şehri'),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text('Bursa Şehri'),
            value: 'Bursa',
          ),
          DropdownMenuItem(
            child: Text('İzmir Şehri'),
            value: 'İzmir',
          ),
        ],*/
        items: _sehirler
            .map((String oAnkiSehir) => DropdownMenuItem(
                  child: Text(oAnkiSehir),
                  value: oAnkiSehir,
                ))
            .toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          print('Çalıştı $yeni');
          setState(() {
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
