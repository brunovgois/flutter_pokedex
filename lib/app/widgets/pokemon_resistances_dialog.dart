import 'package:flutter/material.dart';
import 'package:flutter_pokedex/app/entities/pokemon.dart';
import 'package:flutter_pokedex/app/widgets/poke_type_container.dart';
import 'package:flutter_pokedex/app/widgets/poke_type_container_header.dart';

class PokemonResistancesDialog extends StatelessWidget {
  Pokemon pokemon;

  PokemonResistancesDialog(pokemon) {
    this.pokemon = pokemon;
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(0.0),
      titlePadding: EdgeInsets.fromLTRB(0.0, 5, 5, 5),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      title: PokeTypeContainerHeader(pokemon),
      content: PokeTypeContainer(),
      elevation: 24,
    );
  }
}
