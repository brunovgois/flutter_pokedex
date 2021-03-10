import 'package:flutter/material.dart';
import 'package:flutter_pokedex/app/core/PokeType.dart';
import 'package:flutter_pokedex/app/widgets/color_poke_circle.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconTypes extends StatelessWidget {
  final List<PokeType> pokeTypes;

  const IconTypes({this.pokeTypes});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      alignment: Alignment.center,
      child: pokeTypeIconRow(pokeTypes),
    );
  }

  String getSvgIconUrl(PokeType pokeType) {
    String path = 'assets/icons/';

    String type = pokeType.toString().split('.').last.toLowerCase();

    return path + '$type.svg';
  }

  pokeTypeIconRow(List<PokeType> pokeTypes) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                )
              ]),
              child: getPokeIconColorCircle(pokeTypes[0]),
            ),
            SvgPicture.asset(
              getSvgIconUrl(pokeTypes[0]),
              height: 14,
            ),
          ],
        ),
      ),
      if (pokeTypes.length == 2)
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                  )
                ]),
                child: getPokeIconColorCircle(pokeTypes[1]),
              ),
              SvgPicture.asset(
                getSvgIconUrl(pokeTypes[1]),
                height: 14,
              ),
            ],
          ),
        )
    ]);
  }

  getPokeIconColorCircle(PokeType pokeType) {
    switch (pokeType) {
      case PokeType.FIRE:
        return ColorPokeCircle(Colors.orange);
        break;
      case PokeType.ICE:
        return ColorPokeCircle(Colors.teal[100]);
        break;
      case PokeType.FLYING:
        return ColorPokeCircle(Colors.blue[100]);
        break;
      case PokeType.PSYCHIC:
        return ColorPokeCircle(Colors.red[200]);
        break;
      case PokeType.WATER:
        return ColorPokeCircle(Colors.blue[300]);
        break;
      case PokeType.GROUND:
        return ColorPokeCircle(Colors.orange[700]);
        break;
      case PokeType.ROCK:
        return ColorPokeCircle(Colors.brown[300]);
        break;
      case PokeType.ELECTRIC:
        return ColorPokeCircle(Colors.yellow[300]);
      case PokeType.GRASS:
        return ColorPokeCircle(Colors.green);
        break;
      case PokeType.FIGHTING:
        return ColorPokeCircle(Colors.red);
        break;
      case PokeType.POISON:
        return ColorPokeCircle(Colors.purpleAccent[700]);
        break;
      case PokeType.BUG:
        return ColorPokeCircle(Colors.green[300]);
        break;
      case PokeType.FAIRY:
        return ColorPokeCircle(Colors.purple[100]);
        break;
      case PokeType.GHOST:
        return ColorPokeCircle(Colors.purple[900]);
        break;
      case PokeType.DARK:
        return ColorPokeCircle(Colors.black);
        break;
      case PokeType.STEEL:
        return ColorPokeCircle(Colors.teal[800]);
        break;
      case PokeType.DRAGON:
        return ColorPokeCircle(Colors.lightBlue[900]);
        break;
      case PokeType.NORMAL:
        return ColorPokeCircle(Colors.grey[600]);
        break;
    }
  }
}
