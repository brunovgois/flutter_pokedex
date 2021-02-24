import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pokedex/app/widgets/background.dart';
import 'package:flutter_pokedex/app/widgets/pokemon_app_bar.dart';
import 'package:flutter_pokedex/app/widgets/pokemon_bottom_navigation_bar.dart';
import 'pokemon_list_controller.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({Key key}) : super(key: key);

  @override
  _PokemonListPageState createState() => _PokemonListPageState();
}

class _PokemonListPageState
    extends ModularState<PokemonListPage, PokemonListController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
              preferredSize:
                  Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
              child: PokemonAppBar()),
          bottomNavigationBar:
              SizedBox(height: 80, child: PokemonBottomNavigationBar()),
          body: Container(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
