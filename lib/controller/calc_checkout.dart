import 'dart:ui';

import 'package:get/get.dart';
import 'package:wcare/pages/Item.dart';

class calcCheckout extends GetxController {
  var _items = {}.obs;
  // RxInt total = 0.obs;
  

  void addItem(Item item) {
    if (_items.containsKey(item)) {
      _items[item] += 1;
    } else {
      _items[item] = 1;
    }
    Get.snackbar(
      "item Added",
      "you've add the ${item.name} to the cart",
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 2),
      backgroundColor: Color(0xFFA7D7C5).withOpacity(0.7),
    );
  }

  void removeItem(Item item) {
    if (_items.containsKey(item) && _items[item] == 1) {
      _items.removeWhere((key, value) => key == item);
    } else {
      _items[item] -= 1;
    }

    Get.snackbar(
      "item Removed",
      "you've removed the ${item.name} to the cart",
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 2),
      backgroundColor: Color(0xFFA7D7C5).withOpacity(0.7),
    );
  }

  get items => _items;

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
}
