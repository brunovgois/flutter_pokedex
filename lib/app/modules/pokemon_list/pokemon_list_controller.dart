import 'dart:convert';

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
  ObservableList<Pokemon> pokeList;

  @action
  Future<void> findAllPokemons() async {
    var result = await Dio().get(
        "http://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");

    // print(result.data.toString());
    parsePokemons(result.data);
  }

  void parsePokemons(responseData) {
    List response = json.decode(responseData)["pokemon"];
    List<Pokemon> x = response.map((e) => Pokemon.fromJson(e)).toList();
    print(x.length);
  }
}
