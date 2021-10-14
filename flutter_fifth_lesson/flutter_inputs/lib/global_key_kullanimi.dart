import 'package:flutter/material.dart';

class GlobalKeyKullanimi extends StatelessWidget {
  var floatingActionButton;

  GlobalKeyKullanimi({Key? key}) : super(key: key);
  final sayacWidgetKey = GlobalKey<_SayacWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Global Key Kullanımı'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sayımın Son Değeri'),
            SayacWidget(
              key: sayacWidgetKey,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 550),
        child: Column(
          children: [
            FloatingActionButton(
              child: Icon(Icons.arrow_circle_up),
              onPressed: () {
                sayacWidgetKey.currentState!.arttir();
              },
            ),
            FloatingActionButton(
              onPressed: () {
                sayacWidgetKey.currentState!.azalt();
              },
              child: Icon(Icons.arrow_circle_down),
            ),
          ],
        ),
      ),
    );
  }
}

class SayacWidget extends StatefulWidget {
  SayacWidget({Key? key}) : super(key: key);

  @override
  _SayacWidgetState createState() => _SayacWidgetState();
}

class _SayacWidgetState extends State<SayacWidget> {
  int _sayac = 0;
  void arttir() {
    setState(() {
      _sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _sayac.toString(),
      style: Theme.of(context).textTheme.headline1,
    );
  }

  void azalt() {
    setState(() {
      _sayac--;
    });
  }
}
