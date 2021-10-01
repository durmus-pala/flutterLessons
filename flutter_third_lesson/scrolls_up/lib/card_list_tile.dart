import 'package:flutter/material.dart';

class CardveListtile extends StatelessWidget {
  const CardveListtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card ve List tile')),
      body: Center(
        child: ListView(reverse: true, children: [
          Column(
            children: [
              tekListeEleman(),
              tekListeEleman(),
              tekListeEleman(),
              tekListeEleman(),
              tekListeEleman(),
              tekListeEleman(),
              tekListeEleman(),
              tekListeEleman(),
              tekListeEleman(),
              tekListeEleman(),
              tekListeEleman(),
              tekListeEleman(),
              tekListeEleman(),
            ],
          ),
          Text(
            'Selam',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Button'))
        ]),
      ),
    );
  }

  SingleChildScrollView singleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
          tekListeEleman(),
        ],
      ),
    );
  }

  Column tekListeEleman() {
    return Column(
      children: [
        Center(
          child: Card(
            color: Colors.blue.shade200,
            shadowColor: Colors.red,
            elevation: 12,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.add)),
              title: Text('Başlık kısmı'),
              subtitle: Text('Alt Başlık'),
              trailing: Icon(Icons.real_estate_agent),
            ),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 60,
          endIndent: 60,
        )
      ],
    );
  }
}
