// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderLists.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OrderLists on _OrderLists, Store {
  final _$orderListsAtom = Atom(name: '_OrderLists.orderLists');

  @override
  List<OrderProduct> get orderLists {
    _$orderListsAtom.reportRead();
    return super.orderLists;
  }

  @override
  set orderLists(List<OrderProduct> value) {
    _$orderListsAtom.reportWrite(value, super.orderLists, () {
      super.orderLists = value;
    });
  }

  final _$lenghtListAtom = Atom(name: '_OrderLists.lenghtList');

  @override
  int get lenghtList {
    _$lenghtListAtom.reportRead();
    return super.lenghtList;
  }

  @override
  set lenghtList(int value) {
    _$lenghtListAtom.reportWrite(value, super.lenghtList, () {
      super.lenghtList = value;
    });
  }

  final _$_OrderListsActionController = ActionController(name: '_OrderLists');

  @override
  bool checkInstanceExist(OrderProduct order) {
    final _$actionInfo = _$_OrderListsActionController.startAction(
        name: '_OrderLists.checkInstanceExist');
    try {
      return super.checkInstanceExist(order);
    } finally {
      _$_OrderListsActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addOrder(OrderProduct order) {
    final _$actionInfo =
        _$_OrderListsActionController.startAction(name: '_OrderLists.addOrder');
    try {
      return super.addOrder(order);
    } finally {
      _$_OrderListsActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
orderLists: ${orderLists},
lenghtList: ${lenghtList}
    ''';
  }
}
