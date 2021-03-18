import 'package:mobx/mobx.dart';
import 'package:pokeapi/model/move/move.dart';
import 'package:pokeapi/pokeapi.dart';
part 'pokemon_moves_controller.g.dart';

class PokemonMovesController = _PokemonMovesControllerBase
    with _$PokemonMovesController;

abstract class _PokemonMovesControllerBase with Store {
  @observable
  ObservableList<Move> moveList = <Move>[].asObservable();

  @action
  Future<void> findAllMoves() async {
    print('request MOVES');

    try {
      await PokeAPI.getObjectList<Move>(1, 50) // number of moves: 826
          .then((value) => moveList = value.asObservable());
    } on Exception catch (e) {
      print(e);
    }
  }
}
