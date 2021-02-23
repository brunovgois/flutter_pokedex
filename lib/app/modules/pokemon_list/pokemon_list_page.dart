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
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffdeedfa), Color(0xffc5e5c3)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Pokemon',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      height: 38,
                      child: Opacity(
                        opacity: 0.50,
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(
                              Icons.mic,
                              color: Colors.black,
                            ),
                            filled: true,
                            fillColor: Colors.grey[400],
                            labelText: 'Search',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              toolbarHeight: 300,
            ),
          ),
          body: Container(
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
