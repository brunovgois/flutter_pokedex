import 'package:flutter/material.dart';
import 'package:flutter_pokedex/app/entities/pokemon.dart';

class PokemonResistancesDialog extends StatelessWidget {
  Pokemon pokemon;

  PokemonResistancesDialog(pokemon) {
    this.pokemon = pokemon;
  }
  @override
  Widget build(BuildContext context) {
    print(pokemon.multipliers);
    return AlertDialog(
      title: Text('temp'),
      elevation: 24,
      backgroundColor: Colors.red,
    );
  }
}
