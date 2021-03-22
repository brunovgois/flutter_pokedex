import 'package:flutter/material.dart';
import 'package:flutter_pokedex/app/core/PokeType.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter_pokedex/app/widgets/icon_types.dart';

class PokemonMovesCard extends StatelessWidget {
  final String name;
  final String type;

  PokemonMovesCard({Key key, this.name, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PokeType> types = [];

    PokeType pokeType = EnumToString.fromString(PokeType.values, type);

    types.add(pokeType);

    return ListTile(
      leading: Text(name),
      trailing: IconTypes(
        pokeTypes: types,
      ),
    );
  }
}
