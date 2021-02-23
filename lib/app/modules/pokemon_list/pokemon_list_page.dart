import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pokemon_list_controller.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({Key key}) : super(key: key);

  @override
  _PokemonListPageState createState() => _PokemonListPageState();
}

class _PokemonListPageState
    extends ModularState<PokemonListPage, PokemonListController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize:
                  Size.fromHeight(MediaQuery.of(context).size.height * 0.19),
              child: AppBar(
                backgroundColor: Colors.cyan[50], //temp
                title: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Pokemon',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextField(
                        style: TextStyle(height: 0.3),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.mic),
                          filled: true,
                          fillColor: Colors.grey[300],
                          labelText: 'Search',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                toolbarHeight: 300,
              ),
            ),
            body: Text('Pokemon List..')),
      ),
    );
  }
}
