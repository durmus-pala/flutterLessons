import 'package:flutter/material.dart';
import 'package:flutter_inputs/text_form_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextFormWidgetKullanimi(),
    );
  }
}

class TextFieldIslemleri extends StatefulWidget {
  final String title;
  const TextFieldIslemleri({Key? key, required this.title}) : super(key: key);

  @override
  State<TextFieldIslemleri> createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  late TextEditingController _emailController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: 'durmus@durmus.com');
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              autofocus: true,
              maxLines: 1,
              onChanged: (String deger) {
                print(deger);
              },
              cursorColor: Colors.pink,
              decoration: InputDecoration(
                labelText: 'label Text',
                hintText: 'Email giriniz',
                icon: Icon(Icons.add),
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.access_alarms_outlined),
                filled: true,
                fillColor: Colors.orange,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(18.0),
                )),
              ),
              onSubmitted: (String deger) {
                print("submit" + deger);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_emailController.text),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _emailController.text = 'durmuspala@gmail.com';
          });
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
