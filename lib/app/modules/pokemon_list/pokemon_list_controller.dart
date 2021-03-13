import 'package:flutter_pokedex/app/entities/pokemon.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

part 'pokemon_list_controller.g.dart';

@Injectable()
class PokemonListController = _PokemonListControllerBase
    with _$PokemonListController;

abstract class _PokemonListControllerBase with Store {
  @observable
  ObservableList<Pokemon> pokeList = <Pokemon>[].asObservable();

  @action
  Future<void> findAllPokemons() async {
    var result = await Dio().get(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    pokeList = pokemonListFromMap(result.data).pokemon.asObservable();
  }
}
