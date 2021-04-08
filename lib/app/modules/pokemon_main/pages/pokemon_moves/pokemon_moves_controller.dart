import 'package:dio/dio.dart';
import 'package:flutter_pokedex/app/entities/pokemon_moves.dart';
import 'package:mobx/mobx.dart';

part 'pokemon_moves_controller.g.dart';

class PokemonMovesController = _PokemonMovesControllerBase
    with _$PokemonMovesController;

abstract class _PokemonMovesControllerBase with Store {
  @observable
  ObservableList<PokemonMoves> moveList = <PokemonMoves>[].asObservable();

  @action
  Future<void> findAllMoves() async {
    try {
      for (int i = 1; i < 15; i++) {
        var result = await Dio().get('https://pokeapi.co/api/v2/move/$i');
        moveList.add(PokemonMoves.fromJson(result.data));
      }
    } on Exception catch (e) {
      print(e);
    }
  }
}
