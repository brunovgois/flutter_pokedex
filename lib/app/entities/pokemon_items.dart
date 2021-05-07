class PokemonItems {
  String name;
  String img;
  int price;

  PokemonItems({name, img, price});

  PokemonItems.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    img = json['sprites']["default"];
    price = json['cost'];
  }
}
