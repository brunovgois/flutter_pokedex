import 'package:flutter/material.dart';
import 'package:flutter_pokedex/app/modules/pokemon_list/pokemon_list_page.dart';
import 'package:flutter_pokedex/app/widgets/background.dart';
import 'package:flutter_pokedex/app/widgets/gradientBorder.dart';
import 'package:flutter_pokedex/app/widgets/pokemon_app_bar.dart';
import 'package:flutter_pokedex/app/widgets/pokemon_bottom_navigation_bar.dart';

class PokemonMainPage extends StatefulWidget {
  @override
  _PokemonMainPageState createState() => _PokemonMainPageState();
}

class _PokemonMainPageState extends State<PokemonMainPage> {
  @override
  void initState() {
    print('state initialized');
    super.initState();
  }

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
            child: PokemonAppBar(),
          ),
          bottomNavigationBar: SizedBox(
            height: 80,
            child: PokemonBottomNavigationBar(),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Column(
              children: [
                GradientBorder(),
                PokemonListPage(),
                GradientBorder(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
