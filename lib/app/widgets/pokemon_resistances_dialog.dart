import 'package:dio/dio.dart';
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
    //requestType();
    return AlertDialog(
      title: PokeTypeContainerHeader(pokemon),
      content: PokeTypeContainer(),
      elevation: 24,
    );
  }

  Future<void> requestType() async {
    try {
      var response = await Dio().get("pokeapi.co/api/v2/pokemon/");
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
