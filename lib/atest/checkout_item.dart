import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:wcare/atest/controller.dart';
import 'package:wcare/pages/Item.dart';

class CartProducts extends StatelessWidget {
  final cartController controller = Get.find();

  CartProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double c_height = MediaQuery.of(context).size.height * 0.45;
    return Obx(
      () => SizedBox(
        height: c_height,
        child: 
              ListView.builder(
              itemCount: controller.foods.length,
              itemBuilder: (BuildContext context, int index) {
                return CartProductCard(
                  controller: controller,
                  item: controller.foods.keys.toList()[index],
                  quantity: controller.foods.values.toList()[index],
                  index: index,
                );
              }),
      ),
    );
  }
}


class CartProductCard extends StatelessWidget {
  final cartController controller;
  final Item item;
  final int quantity;
  final int index;

  const CartProductCard({
    Key? key,
    required this.controller,
    required this.item,
    required this.quantity,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: kElevationToShadow[1],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  item.imgUrl,
                  width: 80,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Rp. ${item.price}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  controller.removeItem(item);
                },
                icon: Icon(
                  Icons.remove_circle,
                ),
              ),
              Text('${quantity}'),
              IconButton(
                onPressed: () {
                  controller.addItem(item);
                },
                icon: Icon(
                  Icons.add_circle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
