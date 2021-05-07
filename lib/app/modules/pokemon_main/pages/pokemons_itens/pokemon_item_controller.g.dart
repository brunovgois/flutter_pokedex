// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_item_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonItemController on _PokemonItemControllerBase, Store {
  final _$itemListAtom = Atom(name: '_PokemonItemControllerBase.itemList');

  @override
  ObservableList<PokemonItems> get itemList {
    _$itemListAtom.reportRead();
    return super.itemList;
  }

  @override
  set itemList(ObservableList<PokemonItems> value) {
    _$itemListAtom.reportWrite(value, super.itemList, () {
      super.itemList = value;
    });
  }

  final _$findAllItemsAsyncAction =
      AsyncAction('_PokemonItemControllerBase.findAllItems');

  @override
  Future<void> findAllItems() {
    return _$findAllItemsAsyncAction.run(() => super.findAllItems());
  }

  @override
  String toString() {
    return '''
itemList: ${itemList}
    ''';
  }
}
