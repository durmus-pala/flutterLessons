import 'package:flutter/material.dart';

class PopupmenuKullanimi extends StatefulWidget {
  const PopupmenuKullanimi({Key? key}) : super(key: key);

  @override
  _PopupmenuKullanimiState createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  String _secilenSehir = '';
  List<String> renkler = ['mavi', 'yeşil', 'kırmızı', 'sarı'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        onSelected: (String sehir) {
          print('Seçilen Şehir: $sehir');
        },
        itemBuilder: (BuildContext context) {
          // return <PopupMenuEntry<String>>[
          //   PopupMenuItem(
          //     child: Text('Ankara'),
          //     value: 'Ankara',
          //   ),
          //   PopupMenuItem(
          //     child: Text('Bursa'),
          //     value: 'Bursa',
          //   ),
          //   PopupMenuItem(
          //     child: Text('Muğla'),
          //     value: 'Muğla',
          //   ),
          // ];
          return renkler
              .map(
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
