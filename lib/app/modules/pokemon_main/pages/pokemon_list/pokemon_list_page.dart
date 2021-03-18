import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pokedex/app/widgets/pokemon_card.dart';
import 'package:flutter_pokedex/app/widgets/pokemon_resistances_dialog.dart';
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
    return Expanded(
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
                      return GestureDetector(
                        onLongPress: () {
                          showDialog(
                            context: context,
                            builder: (_) => PokemonResistancesDialog(tracker),
                          );
                        },
                        child: PokemonCard(
                          num: tracker.num,
                          imgUri: tracker.img,
                          name: tracker.name,
                          type: tracker.type,
                        ),
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
    );
  }
}
