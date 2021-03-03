import 'package:flutter/material.dart';
import 'package:flutter_pokedex/app/core/PokeType.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconTypes extends StatelessWidget {
  final List<PokeType> pokeTypes;

  const IconTypes({this.pokeTypes});

  @override
  Widget build(BuildContext context) {
    print(pokeTypes);
    print('Types');
    return SizedBox(
      width: 60,
      child: Row(
        children: [
          Container(),
          // SvgPicture.asset("../../../assets/icons/bug.svg"),
        ],
      ),
    );
  }
}
