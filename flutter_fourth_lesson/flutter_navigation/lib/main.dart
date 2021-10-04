import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/red_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation İşlemleri'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () async {
                    int? _gelenSayi = await Navigator.push<int>(
                      context,
                      CupertinoPageRoute(
                        builder: (redContext) => RedPage(),
                      ),
                    );
                    debugPrint('Anasayfadaki sayı: $_gelenSayi');
                  },
                  child: Text('Kırmızı sayfaya git IOS'),
                  style:
                      ElevatedButton.styleFrom(primary: Colors.red.shade300)),
              ElevatedButton(
                  onPressed: () {
                    //Navigator.push(context, route)
                    Navigator.of(context)
                        .push<int>(MaterialPageRoute(
                            builder: (redContext) => RedPage()))
                        .then((int? value) => debugPrint('Gelen Sayı: $value'));
                  },
                  child: Text('Kırmızı sayfaya git Adroid'),
                  style: ElevatedButton.styleFrom(primary: Colors.red.shade600))
            ],
          ),
        ),
      ),
    );
  }
}
