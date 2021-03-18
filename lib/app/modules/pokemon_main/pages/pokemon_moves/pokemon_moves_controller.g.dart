// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_moves_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonMovesController on _PokemonMovesControllerBase, Store {
  final _$moveListAtom = Atom(name: '_PokemonMovesControllerBase.moveList');

  @override
  ObservableList<Move> get moveList {
    _$moveListAtom.reportRead();
    return super.moveList;
  }

  @override
  set moveList(ObservableList<Move> value) {
    _$moveListAtom.reportWrite(value, super.moveList, () {
      super.moveList = value;
    });
  }

  final _$findAllMovesAsyncAction =
      AsyncAction('_PokemonMovesControllerBase.findAllMoves');

  @override
  Future<void> findAllMoves() {
    return _$findAllMovesAsyncAction.run(() => super.findAllMoves());
  }

  @override
  String toString() {
    return '''
moveList: ${moveList}
    ''';
  }
}
