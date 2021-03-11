import 'package:flutter_pokedex/app/modules/pokemon_list/pokemon_list_module.dart';
import 'package:flutter_pokedex/app/modules/pokemon_main/pokemon_main_module.dart';
import 'package:flutter_pokedex/app/modules/pokemon_moves/pokemon_moves_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: PokemonMainModule()),
        ModularRouter('/list', module: PokemonListModule()),
        ModularRouter('/moves', module: PokemonMovesModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
