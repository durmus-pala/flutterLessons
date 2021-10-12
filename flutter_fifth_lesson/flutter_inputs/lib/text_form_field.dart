import 'package:flutter/material.dart';
// import 'package:email_validator/email_validator.dart';

class TextFormWidgetKullanimi extends StatefulWidget {
  TextFormWidgetKullanimi({Key? key}) : super(key: key);

  @override
  _TextFormWidgetKullanimiState createState() =>
      _TextFormWidgetKullanimiState();
}

class _TextFormWidgetKullanimiState extends State<TextFormWidgetKullanimi> {
  String _email = '';
  String _userName = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextForm Field Kullanımı'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.length < 4) {
                      return 'Username en az 4 karakter olmalı';
                    } else {
                      return null;
                    }
                  },
                  initialValue: 'durmus pala',
                  decoration: InputDecoration(
                      //errorStyle: TextStyle(color: Colors.orange),
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      hintText: 'Username'),
                  onSaved: (deger) {
                    _userName = deger!;
                  },
                ),
                TextFormField(
                  // validator: (value) {
                  //   if (EmailValidator.validate(value!)) {
                  //     return 'Geçerli mail Giriniz';
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  initialValue: 'durmuspala@gmail.com',
                  decoration: InputDecoration(
                      //errorStyle: TextStyle(color: Colors.orange),
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Email'),
                  onSaved: (deger) {
                    _email = deger!;
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      bool _validate = _formKey.currentState!.validate();
                      if (_validate) {
                        _formKey.currentState!.save();
                        String result = 'username: $_userName\nemail: $_email';
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(result)));
                        _formKey.currentState!.reset();
                      }
                    },
                    child: Text('Onayla')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
