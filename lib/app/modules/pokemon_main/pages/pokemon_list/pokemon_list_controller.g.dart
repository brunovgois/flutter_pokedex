// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonListController on _PokemonListControllerBase, Store {
  final _$pokeListAtom = Atom(name: '_PokemonListControllerBase.pokeList');

  @override
  ObservableList<Pokemon> get pokeList {
    _$pokeListAtom.reportRead();
    return super.pokeList;
  }

  @override
  set pokeList(ObservableList<Pokemon> value) {
    _$pokeListAtom.reportWrite(value, super.pokeList, () {
      super.pokeList = value;
    });
  }

  final _$findAllPokemonsAsyncAction =
      AsyncAction('_PokemonListControllerBase.findAllPokemons');

  @override
  Future<void> findAllPokemons() {
    return _$findAllPokemonsAsyncAction.run(() => super.findAllPokemons());
  }

  @override
  String toString() {
    return '''
pokeList: ${pokeList}
    ''';
  }
}
