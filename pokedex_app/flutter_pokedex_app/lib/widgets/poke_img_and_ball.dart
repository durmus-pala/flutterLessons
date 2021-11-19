import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex_app/constants/ui_helper.dart';
import 'package:flutter_pokedex_app/model/pokemon_model.dart';

class PokeImgAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImgAndBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(pokeballImageUrl,
              width: UIHelper.calculatePokeImageAndBallSzie(),
              height: UIHelper.calculatePokeImageAndBallSzie(),
              fit: BoxFit.fitHeight),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? '',
              errorWidget: (context, url, error) => const Icon(Icons.ac_unit),
              width: UIHelper.calculatePokeImageAndBallSzie(),
              height: UIHelper.calculatePokeImageAndBallSzie(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url) => CircularProgressIndicator(
                color: UIHelper.getColorFromType(pokemon.type![0]),
              ),
            ),
          ),
        )
      ],
    );
  }
}
