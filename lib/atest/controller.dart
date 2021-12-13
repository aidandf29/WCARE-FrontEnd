import 'dart:ui';
import 'package:get/get.dart';
import 'package:wcare/pages/Item.dart';


class cartController extends GetxController {
  var _items = {}.obs;
  // RxInt total = 0.obs;

  void addItem(Item item) {
    if (_items.containsKey(item)) {
      _items[item] += 1;
    } else {
      _items[item] = 1;
    }

    Get.snackbar(
      "Food Added",
      "you've add the ${item.name} to the cart",
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 2),
      backgroundColor: Color(0xFFFF8023).withOpacity(0.8),
    );
  }

  void removeItem(Item item) {
    if (_items.containsKey(item) && _items[item] == 1) {
      _items.removeWhere((key, value) => key == item);
    } else {
      _items[item] -= 1;
    }

    Get.snackbar(
      "Food Removed",
      "you've removed the ${item.name} to the cart",
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 2),
      backgroundColor: Color(0xFFFF8023).withOpacity(0.8),
    );
  }

  get foods => _items;

  get itemSubtotal =>
      _items.entries.map((item) => item.key.price * item.value).toList();

  getTotal() {
    num total = 0;
    _items.entries
        .map((item) => item.key.price * item.value)
        .toList()
        .forEach((element) => total += element);
    return total;
  }

  clearList() {
    _items.clear();
  }

  get foodAmount =>
      _items.entries.map((item) => item.value.toString()).toList();

  get foodName =>
      _items.entries.map((item) => item.key.menuTitle.toString()).toList();

  get foodPrice =>
      _items.entries.map((item) => item.key.price.toString()).toList();

  get foodList2 => _items.entries
      .map((item) =>
          item.value.toString() +
          ' ' +
          item.key.menuTitle.toString() +
          ' ' +
          (item.key.price * item.value).toString())
      .toList();

  // foodlist() {
  //   var list = _items.entries
  //       .map((item) =>
  //           item.value.toString() +
  //           ' ' +
  //           item.key.menuTitle.toString() +
  //           ' ' +
  //           (item.key.price * item.value).toString())
  //       .toList();
  //   return list;
  // }
}