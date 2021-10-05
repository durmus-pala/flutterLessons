import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/orange_page.dart';
import 'package:flutter_navigation/red_page.dart';
import 'package:flutter_navigation/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: AnaSayfa(),
      // routes: {
      //   '/redPage': (context) => RedPage(),
      //   '/': (context) => AnaSayfa(),
      //   '/orangePage': (context) => OrangePage(),
      // },
      // onUnknownRoute: (settings) => MaterialPageRoute(
      //     builder: (context) => Scaffold(
      //           appBar: AppBar(
      //             title: Text('Error'),
      //           ),
      //           body: Text('404 Page Not Found'),
      //         )),
      onGenerateRoute: RouteGenerator.routeGenerator,
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
                  style:
                      ElevatedButton.styleFrom(primary: Colors.red.shade600)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/redPage');
                  },
                  child: Text('Kırmızı sayfaya git Adroid pushnamed kullanımı'),
                  style:
                      ElevatedButton.styleFrom(primary: Colors.blue.shade600)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/orangePage');
                  },
                  child: Text('Turuncu sayfaya git Adroid pushnamed kullanımı'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade600)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/yellowPage');
                  },
                  child: Text('Sarı sayfaya git Adroid pushnamed kullanımı'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.yellow.shade600)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed('/ogrenciListesi', arguments: 85);
                  },
                  child: Text('Liste Oluştur'),
                  style:
                      ElevatedButton.styleFrom(primary: Colors.green.shade600))
            ],
          ),
        ),
      ),
    );
  }
}
