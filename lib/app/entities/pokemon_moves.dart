class PokemonMoves {
  int id;
  String name;
  String type;

  PokemonMoves({this.id, this.name, this.type});

  PokemonMoves.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type']['name'];
  }
}
