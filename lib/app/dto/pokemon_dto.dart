import 'package:flutter_pokedex/app/core/PokeType.dart';
import 'package:flutter_pokedex/app/entities/pokemon.dart';

class PokemonDTO {
  int id;
  String num;
  String name;
  String img;
  List<PokeType> type;

  PokemonDTO({this.id, this.num, this.name, this.type});
  Map<String, dynamic> toMap() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "type": List<dynamic>.from(type.map((e) => typeValues.reverse[e])),
      };
}
