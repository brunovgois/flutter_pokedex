import 'package:flutter/material.dart';
import 'package:flutter_pokedex/app/core/PokeType.dart';
import 'package:flutter_pokedex/app/widgets/icon_types.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PokemonCard extends StatelessWidget {
  final String imgUri;
  final List<PokeType> type;
  final String name;
  final String num;

  const PokemonCard({Key key, this.imgUri, this.type, this.name, this.num})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedNetworkImage(
        placeholder: (context, url) => CircularProgressIndicator(),
        imageUrl: imgUri,
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        '#$num',
        style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14),
      ),
      trailing: IconTypes(
        pokeTypes: type,
      ),
    );
  }
}
