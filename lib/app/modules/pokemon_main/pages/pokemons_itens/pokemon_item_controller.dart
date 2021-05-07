import 'package:dio/dio.dart';
import 'package:flutter_pokedex/app/entities/pokemon_items.dart';
import 'package:mobx/mobx.dart';

part 'pokemon_item_controller.g.dart';

class PokemonItemController = _PokemonItemControllerBase
    with _$PokemonItemController;

abstract class _PokemonItemControllerBase with Store {
  @observable
  ObservableList<PokemonItems> itemList = <PokemonItems>[].asObservable();

  @action
  Future<void> findAllItems() async {
    try {
      for (int i = 1; i < 20; i++) {
        var result = await Dio().get('https://pokeapi.co/api/v2/item/$i');
        itemList.add(PokemonItems.fromJson(result.data));
      }
    } on Exception catch (e) {
      print(e);
    }
  }
}
