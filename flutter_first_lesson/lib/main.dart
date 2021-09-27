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
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Başlık'),
        ),
        // ignore: prefer_const_constructors
        body: Container(
          width: 200,
          height: 300,
          color: Colors.purple,
          alignment: Alignment.center,
          // ignore: prefer_const_constructors
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          child: Text(
            'Durmuş' * 10,
            textAlign: TextAlign.center,
            // ignore: prefer_const_constructors
          ),
          // ignore: prefer_const_constructors
          // constraints: BoxConstraints(
          //     minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {debugPrint('Tıklandı')},
          // ignore: prefer_const_constructors
          child: Icon(Icons.account_circle_rounded),
        ),
      ),
    );
  }
}
