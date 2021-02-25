import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pokedex/app/entities/pokemon.dart';
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
  void initState() {
    super.initState();
    controller.findAllPokemons();
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
              child: PokemonAppBar()),
          bottomNavigationBar:
              SizedBox(height: 80, child: PokemonBottomNavigationBar()),
          body: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 5, color: Color(0xff6eaafc)),
                    bottom: BorderSide(width: 5, color: Color(0xff51e85e))),
              ),
              child: Observer(
                builder: (_) {
                  return ListView.separated(
                    itemCount: controller.pokeList.length,
                    itemBuilder: (context, index) {
                      var tracker = controller.pokeList[index];
                      return Text(tracker.name);
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}


// FutureBuilder<List<Pokemon>>(
//             future: controller.findAllPokemons(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState != ConnectionState.done) {
//                 return Center(
//                   child: return !snapshot.hadData
//         ? Center(child: CircularProgressIndicator())
//         : Observer(builder: (_) {
//             return ListView.builder(itemBuilder: (_, index) {});
//           }),
//                 );
//               }
//             },
//           );