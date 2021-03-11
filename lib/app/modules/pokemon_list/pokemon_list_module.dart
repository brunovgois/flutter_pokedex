import 'pokemon_list_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pokemon_list_page.dart';

class PokemonListModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PokemonListController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, __) => PokemonListPage(),
        ),
      ];

  static Inject get to => Inject<PokemonListModule>.of();
}
