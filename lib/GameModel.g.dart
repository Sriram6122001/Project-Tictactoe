// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GameModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GameModel on _gameModelBase, Store {
  late final _$resultAtom =
      Atom(name: '_gameModelBase.result', context: context);

  @override
  String get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  late final _$_gameModelBaseActionController =
      ActionController(name: '_gameModelBase', context: context);

  @override
  void setWinner({required String result}) {
    final _$actionInfo = _$_gameModelBaseActionController.startAction(
        name: '_gameModelBase.setWinner');
    try {
      return super.setWinner(result: result);
    } finally {
      _$_gameModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
result: ${result}
    ''';
  }
}
