import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'pokemon_list_controller.g.dart';

@Injectable()
class PokemonListController = _PokemonListControllerBase
    with _$PokemonListController;

abstract class _PokemonListControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
