import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pokedex/app/modules/pokemon_main/pages/pokemon_moves/pokemon_moves_controller.dart';
import 'package:flutter_pokedex/app/widgets/pokemon_moves_card.dart';

class PokemonMovesPage extends StatefulWidget {
  @override
  _PokemonMovesPageState createState() => _PokemonMovesPageState();
}

class _PokemonMovesPageState
    extends ModularState<PokemonMovesPage, PokemonMovesController> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: FutureBuilder(
          initialData: [],
          future: controller.findAllMoves(),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return Container(
                color: Colors.white,
                child: Center(child: CircularProgressIndicator()),
              );
            }
            return ListView.builder(
              itemCount: controller.moveList.length ?? 0,
              itemBuilder: (context, index) {
                var tracker = controller.moveList[index];
                return PokemonMovesCard(
                  name: tracker.name,
                  type: tracker.type,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
