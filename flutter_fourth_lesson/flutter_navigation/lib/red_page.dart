import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);
  int _rasgelesayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        debugPrint('Onwillpop çalıştı');
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Red Page'),
          backgroundColor: Colors.red,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Red Page',
                style: TextStyle(fontSize: 24),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _rasgelesayi = Random().nextInt(100);
                debugPrint('Üretilen Sayı $_rasgelesayi');
                Navigator.of(context).pop(_rasgelesayi);
              },
              child: Text('Geri Gön'),
            )
          ],
        ),
      ),
    );
  }
}
