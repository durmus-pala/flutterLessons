import 'package:dinamik_ortalama_hesapla/constants/app_constant.dart';
import 'package:flutter/material.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  OrtalamaHesaplaPageState createState() => OrtalamaHesaplaPageState();
}

class OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            Sabitler.baslikText,
            style: Sabitler.baslikStyle,
          ),
        ),
      ),
      body: Center(
        child: Text('Merhaba'),
      ),
    );
  }
}
