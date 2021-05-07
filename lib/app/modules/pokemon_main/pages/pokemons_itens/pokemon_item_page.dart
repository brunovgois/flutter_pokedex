import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pokedex/app/modules/pokemon_main/pages/pokemons_itens/pokemon_item_controller.dart';
import 'package:flutter_pokedex/app/widgets/pokemon_item_card.dart';

class PokemonItemPage extends StatefulWidget {
  @override
  _PokemonItemPageState createState() => _PokemonItemPageState();
}

class _PokemonItemPageState
    extends ModularState<PokemonItemPage, PokemonItemController> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: FutureBuilder(
          initialData: [],
          future: controller.findAllItems(),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return Container(
                color: Colors.white,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            return ListView.builder(
              itemCount: controller.itemList.length ?? 0,
              itemBuilder: (context, index) {
                var tracker = controller.itemList[index];
                return PokemonItemCard(
                  name: tracker.name,
                  img: tracker.img,
                  price: tracker.price,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
