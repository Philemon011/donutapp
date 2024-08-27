import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

// ignore: must_be_immutable
class PizzaTab extends StatelessWidget {
  List pizzaOnsale = [
    ["Pizza a", "36", Colors.red, "lib/images/pizza (1).png"],
    ["Pizza b", "45", Colors.yellowAccent, "lib/images/pizza (2).png"],
    ["Pizza c", "84", Colors.yellow, "lib/images/pizza (3).png"],
    ["Pizza d", "95", Colors.pink, "lib/images/pizza.png"]
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pizzaOnsale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            childAspectRatio: 1/1.5),
        itemBuilder: (context, index) {
          return DonutTile(
            donutColor: pizzaOnsale[index][2],
            donutFlavor: pizzaOnsale[index][0],
            donutPrice: pizzaOnsale[index][1],
            imageName: pizzaOnsale[index][3],
          );
        });
  }
}
