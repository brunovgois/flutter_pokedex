import 'package:flutter/material.dart';

class PokemonItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Text('Itens'),
        ),
      ),
    );
  }
}
