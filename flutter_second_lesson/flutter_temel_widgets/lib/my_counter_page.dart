import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  MyCounterPage({Key? key}) : super(key: key);

  @override
  _MyCounterPageState createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Counter AppBar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Butona Basılma Miktarı',
              style: TextStyle(fontSize: 24),
            ),
            Text(_sayac.toString(),
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('buton tıklandı ve sayaç değeri $_sayac');
            sayaciarttir();
          },
          child: Icon(Icons.add)),
    );
  }

  void sayaciarttir() {
    setState(() {
      _sayac++;
    });
  }
}
