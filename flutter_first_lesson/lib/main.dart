import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Başlık'),
        ),
        // ignore: prefer_const_constructors
        body: Text(
          'Hello World',
          // ignore: prefer_const_constructors
          style: TextStyle(
              color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          // ignore: prefer_const_constructors
          child: Icon(Icons.account_circle_rounded),
        ),
      ),
    );
  }
}
