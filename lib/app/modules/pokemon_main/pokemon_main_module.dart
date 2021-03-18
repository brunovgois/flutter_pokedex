import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pokedex/app/modules/pokemon_main/pages/pokemon_list/pokemon_list_controller.dart';
import 'package:flutter_pokedex/app/modules/pokemon_main/pages/pokemon_moves/pokemon_moves_controller.dart';
import 'package:flutter_pokedex/app/modules/pokemon_main/pokemon_main_page.dart';

class PokemonMainModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PokemonListController()),
        Bind((i) => PokemonMovesController())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, __) => PokemonMainPage()),
      ];
}
