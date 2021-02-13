import 'package:fruitzshop/Models/OrderProduct.dart';
import 'package:mobx/mobx.dart';

part 'orderLists.g.dart';

class OrderLists = _OrderLists with _$OrderLists;

abstract class _OrderLists with Store {
  @observable
  var orderLists = new List<OrderProduct>.filled(3, null, growable: true);
  int index = 0;

  @observable
  int lenghtList = 0;

  @action
  bool checkInstanceExist(OrderProduct order) {
    orderLists.forEach((value) {
      if (value.order.nameCombo == order.order.nameCombo) {
        index = orderLists.indexOf(value);
        return true;
      }
    });
    return false;
  }

  @action
  void addOrder(OrderProduct order) {
    if (checkInstanceExist(order) == true) {
      orderLists.insert(index, order);
    } else {
      orderLists.add(order);
      lenghtList += 1;
    }
  }
}
