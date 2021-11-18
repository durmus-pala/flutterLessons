// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pokedex_app/widgets/app_title.dart';
import 'package:flutter_pokedex_app/widgets/pokemon_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppTitle(),
          Expanded(child: PokemonList()),
        ],
      ),
    );
  }
}
