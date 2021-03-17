import 'package:flutter/material.dart';

class PokemonMovesPage extends StatefulWidget {
  @override
  _PokemonMovesPageState createState() => _PokemonMovesPageState();
}

class _PokemonMovesPageState extends State<PokemonMovesPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Text('Moves'),
        ),
      ),
    );
  }
}
