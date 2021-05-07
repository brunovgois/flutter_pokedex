import 'dart:convert';
import '../core/PokeType.dart';

PokemonList pokemonListFromMap(String str) =>
    PokemonList.fromMap(json.decode(str));

class PokemonList {
  PokemonList({
    this.pokemon,
  });

  List<Pokemon> pokemon;

  factory PokemonList.fromMap(Map<String, dynamic> json) => PokemonList(
        pokemon:
            List<Pokemon>.from(json["pokemon"].map((x) => Pokemon.fromMap(x))),
      );
}

class Pokemon {
  Pokemon({
    this.id,
    this.num,
    this.name,
    this.img,
    this.type,
  });

  int id;
  String num;
  String name;
  String img;
  List<PokeType> type;

  factory Pokemon.fromMap(Map<String, dynamic> json) => Pokemon(
        id: json["id"],
        num: json["num"],
        name: json["name"],
        img: json["img"],
        type: List<PokeType>.from(json["type"].map((x) => typeValues.map[x])),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "type": List<dynamic>.from(type.map((x) => typeValues.reverse[x])),
      };
}

final typeValues = EnumValues({
  "Bug": PokeType.BUG,
  "Dark": PokeType.DARK,
  "Dragon": PokeType.DRAGON,
  "Electric": PokeType.ELECTRIC,
  "Fairy": PokeType.FAIRY,
  "Fighting": PokeType.FIGHTING,
  "Fire": PokeType.FIRE,
  "Flying": PokeType.FLYING,
  "Ghost": PokeType.GHOST,
  "Grass": PokeType.GRASS,
  "Ground": PokeType.GROUND,
  "Ice": PokeType.ICE,
  "Normal": PokeType.NORMAL,
  "Poison": PokeType.POISON,
  "Psychic": PokeType.PSYCHIC,
  "Rock": PokeType.ROCK,
  "Steel": PokeType.STEEL,
  "Water": PokeType.WATER
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
