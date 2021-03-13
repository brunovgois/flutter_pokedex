import 'package:flutter/material.dart';
import 'package:flutter_pokedex/app/modules/pokemon_main/pages/pokemon_list/pokemon_list_page.dart';
import 'package:flutter_pokedex/app/modules/pokemon_main/pages/pokemon_moves/pokemon_moves_page.dart';
import 'package:flutter_pokedex/app/modules/pokemon_main/pages/pokemons_itens/pokemon_item_page.dart';
import 'package:flutter_pokedex/app/widgets/background.dart';
import 'package:flutter_pokedex/app/widgets/gradientBorder.dart';
import 'package:flutter_pokedex/app/widgets/pokemon_app_bar.dart';

class PokemonMainPage extends StatefulWidget {
  @override
  _PokemonMainPageState createState() => _PokemonMainPageState();
}

class _PokemonMainPageState extends State<PokemonMainPage> {
  int _currentBottomTabBarIndex = 0;

  final List<Widget> _pages = [
    PokemonListPage(),
    PokemonMovesPage(),
    PokemonItemPage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Background(),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: PreferredSize(
              preferredSize:
                  Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
              child: PokemonAppBar(),
            ),
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
            body: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Column(
                children: [
                  GradientBorder(),
                  _pages[_currentBottomTabBarIndex],
                  GradientBorder(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
