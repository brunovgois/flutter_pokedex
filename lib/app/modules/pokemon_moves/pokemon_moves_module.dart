import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pokedex/app/modules/pokemon_moves/pokemon_moves_page.dart';

class PokemonMovesModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers =>
      [ModularRouter('/', child: (_, __) => PokemonMovesPage())];
}
