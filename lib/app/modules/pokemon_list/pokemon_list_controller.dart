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

    print(result.data.toString());
    // parsePokemons(result.data);
  }

  void parsePokemons(responseData) {
    // List<Pokemon> x =
    //     responseData["pokemon"].map((e) => Pokemon.fromJson(e)).toList();

    print(Pokemon.fromJson(responseData));

    // var decode = json.decode(responseData)["pokemon"].cast<Pokemons>();

    // var map = LinkedHashMap<String, dynamic>.from(responseData);

    // Pokemons.fromJson(responseData); //Unhandled Exception: type 'String' is not a subtype of type 'Map<String, dynamic>'
    // print(responseData);

    // var x = (responseData as List).map((e) => Pokemon.fromJson(e)).toList();
    // print(Map<String, dynamic>.from(responseData));
    // var decoded = json.decode(responseData);
    // List<Pokemon> temp = [];
    // for (var item in decoded) {
    //   temp.add(Pokemon.fromJson(item));
    // }

    // final List<Pokemon> parsedPokeList = json.decode(responseBody);
    // List<Pokemon> list =
    //     parsedPokeList.map((e) => parsedPokeList.fromJson(e).toList());
  }
}
