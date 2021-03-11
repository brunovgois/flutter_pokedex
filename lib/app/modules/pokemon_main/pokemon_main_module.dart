import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pokedex/app/modules/pokemon_main/pokemon_main_page.dart';

class PokemonMainModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, __) => PokemonMainPage()),
      ];
}
