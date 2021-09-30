import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text('textButton'),
          style: TextButton.styleFrom(backgroundColor: Colors.amber),
        ),
        TextButton.icon(
            onPressed: () {
              debugPrint('Kısa Basıldı');
            },
            onLongPress: () {
              debugPrint('Uzun basıldı');
            },
            style: ButtonStyle(
              //backgroundColor: MaterialStateProperty.all(Colors.red),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.red;
                }
                if (states.contains(MaterialState.hovered)) {
                  return Colors.orange;
                }
              }),
              foregroundColor: MaterialStateProperty.all(Colors.blue),
              overlayColor:
                  MaterialStateProperty.all(Colors.yellow.withOpacity(0.5)),
            ),
            icon: Icon(Icons.add),
            label: Text('Text Button with Icon')),
        ElevatedButton(
            onPressed: () {},
            child: Text('Elevated Button'),
            style: ElevatedButton.styleFrom(
                primary: Colors.red, onPrimary: Colors.yellow)),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Elevated with Icon')),
        OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Outlined with Icon'),
            style: OutlinedButton.styleFrom(
              shape: StadiumBorder(),
              side: BorderSide(color: Colors.purple, width: 2),
            )),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Outlined with Icon'),
            style: OutlinedButton.styleFrom(
                side: BorderSide(width: 2, color: Colors.purple),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))))),
      ],
    );
  }
}
