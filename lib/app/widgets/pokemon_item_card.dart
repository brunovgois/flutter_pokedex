import 'package:flutter/material.dart';

class PokemonItemCard extends StatelessWidget {
  final String name;
  final String img;
  final int price;

  PokemonItemCard({Key key, this.name, this.img, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(img),
      title: Text(name),
      trailing: Text(price.toString()),
    );
  }
}
