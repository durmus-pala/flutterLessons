import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgURL =
        'https://www.muratoner.net/wp-content/uploads/2019/01/flutterlogo.png';
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                      color: Colors.blue.shade300,
                      child: Image.asset(
                        'assets/images/avatar.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
                Expanded(
                  child: Container(
                      color: Colors.blue.shade300,
                      child: Image.network(
                        _imgURL,
                        fit: BoxFit.cover,
                      )),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red.shade300,
                      child: CircleAvatar(
                        //child: Text('D', style: Theme.of(context).textTheme.headline1),
                        backgroundImage: NetworkImage(_imgURL),
                      )),
                )
              ],
            ),
          ),
          FadeInImage.assetNetwork(
              height: 200,
              placeholder: 'assets/images/avatar.jpg',
              image: _imgURL),
        ],
      ),
    );
  }
}
