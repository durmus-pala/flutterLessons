import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/dropdown_button_usage.dart';
import 'package:flutter_temel_widgets/image_widgets.dart';
import 'package:flutter_temel_widgets/my_counter_page.dart';
import 'package:flutter_temel_widgets/pupupmenu_usage.dart';
import 'package:flutter_temel_widgets/temel_button_types.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Counter App',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Buton Örnekleri'),
            actions: [PopupmenuKullanimi()],
          ),
          body: PopupmenuKullanimi(),
        ));
  }
}
