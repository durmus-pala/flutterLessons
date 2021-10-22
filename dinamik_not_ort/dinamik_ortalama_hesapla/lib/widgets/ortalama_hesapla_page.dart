import 'package:dinamik_ortalama_hesapla/constants/app_constant.dart';
import 'package:dinamik_ortalama_hesapla/widgets/ortalama_goster.dart';
import 'package:flutter/material.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  OrtalamaHesaplaPageState createState() => OrtalamaHesaplaPageState();
}

class OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            Sabitler.baslikText,
            style: Sabitler.baslikStyle,
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: _buildForm(),
            ),
            Expanded(
                flex: 1,
                child: OrtalamaGoster(dersSayisi: 1, ortalama: 4.85987))
          ],
        ),
        Expanded(
          child: Container(
            child: Text('Form buraya gelecek'),
            color: Colors.blue,
          ),
        )
      ]),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          _buildTextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
              IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
              IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
            ],
          ),
        ],
      ),
    );
  }

  _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Matematik',
          border: OutlineInputBorder(
            borderRadius: Sabitler.borderRadius,
          ),
          filled: true,
          fillColor: Sabitler.anaRenk.shade100.withOpacity(0.3)),
    );
  }
}
