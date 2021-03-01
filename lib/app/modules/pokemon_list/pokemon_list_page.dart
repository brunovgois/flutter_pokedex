import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pokedex/app/widgets/background.dart';
import 'package:flutter_pokedex/app/widgets/pokemon_app_bar.dart';
import 'package:flutter_pokedex/app/widgets/pokemon_bottom_navigation_bar.dart';
import 'package:flutter_pokedex/app/widgets/pokemon_card.dart';
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
            child: Column(
              children: [
                Container(
                  height: 5,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff6ea8fc), Color(0xff51e85e)],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: FutureBuilder(
                      initialData: [],
                      future: controller.findAllPokemons(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState != ConnectionState.done) {
                          return Container(
                            color: Colors.white,
                            child: Center(child: CircularProgressIndicator()),
                          );
                        } else {
                          return Observer(
                            builder: (_) {
                              return ListView.separated(
                                itemCount: controller.pokeList.length ?? 0,
                                itemBuilder: (context, index) {
                                  var tracker = controller.pokeList[index];
                                  return PokemonCard(
                                    num: tracker.num,
                                    imgUri: tracker.img,
                                    name: tracker.name,
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return Divider();
                                },
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                ),
                Container(
                  height: 5,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff6ea8fc), Color(0xff51e85e)],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
