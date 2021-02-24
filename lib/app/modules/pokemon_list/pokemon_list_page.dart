import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pokedex/app/widgets/background.dart';
import 'package:flutter_pokedex/app/widgets/pokemonAppBar.dart';
import 'pokemon_list_controller.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({Key key}) : super(key: key);

  @override
  _PokemonListPageState createState() => _PokemonListPageState();
}

class _PokemonListPageState
    extends ModularState<PokemonListPage, PokemonListController> {
  int _currentBottomTabBarIndex = 0;

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
          bottomNavigationBar: SizedBox(
            height: 80,
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: _currentBottomTabBarIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.pets), label: 'Pokemon'), //temp icon
                BottomNavigationBarItem(
                    icon: Icon(Icons.track_changes),
                    label: 'Moves'), //temp icon
                BottomNavigationBarItem(
                    icon: Icon(Icons.bug_report), label: 'Itens'),
              ],
              onTap: (index) {
                setState(() {
                  _currentBottomTabBarIndex = index;
                });
              },
            ),
          ),
          body: Container(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
