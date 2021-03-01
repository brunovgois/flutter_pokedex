import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PokemonCard extends StatelessWidget {
  final String imgUri;
  final List<String> type;
  final String name;
  final String num;

  const PokemonCard({Key key, this.imgUri, this.type, this.name, this.num})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        imgUri,
        scale: 1,
      ),
      title: Text(name),
      subtitle: Text(num),
      // trailing: Text(type[0]),
    );
  }
}
