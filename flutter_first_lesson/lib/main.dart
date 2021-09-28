import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(myApp());
}

// ignore: camel_case_types, use_key_in_widget_constructors
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Başlık'),
        ),
        // ignore: prefer_const_constructors
        body: Container(
          color: Colors.red.shade300,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.green,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.red,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.blue,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.orange,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {debugPrint('Tıklandı')},
          // ignore: prefer_const_constructors
          child: Icon(Icons.account_circle_rounded),
        ),
      ),
    );
  }

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: FlutterLogo(
          size: 128,
        ),
        decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(width: 4, color: Colors.purple),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                  color: Colors.green, offset: Offset(10, 20), blurRadius: 10),
              BoxShadow(
                  color: Colors.yellow, offset: Offset(0, -20), blurRadius: 20),
            ]),
      ),
    );
  }
}
