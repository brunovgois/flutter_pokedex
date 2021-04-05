import 'package:flutter/material.dart';
import 'package:flutter_pokedex/app/entities/pokemon.dart';
import 'package:flutter_pokedex/app/widgets/icon_types.dart';

class PokeTypeContainerHeader extends StatelessWidget {
  Pokemon pokemon;

  PokeTypeContainerHeader(pokemon) {
    this.pokemon = pokemon;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
          child: Image.network(
            pokemon.img,
            height: 60,
            width: 60,
          ),
        ),
        Column(
          children: [
            Text(pokemon.name),
            Text(
              '#${pokemon.num}',
              style: TextStyle(
                  //TODO change font
                  fontSize: 16,
                  fontWeight: FontWeight.w100),
            ),
          ],
        ),
        Expanded(
          child: IconTypes(
            pokeTypes: pokemon.type,
          ),
        ),
      ]),
    );
  }
}
