import 'package:donuts/class/burgerClass.dart';
import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

// ignore: must_be_immutable
class BurgerTab extends StatelessWidget {
  List<Burgerclass> burger = [
    Burgerclass(nom: "Burger a", prix: "82", couleur: Colors.red, chemin: "lib/images/burger (1).png"),
    Burgerclass(nom: "Burger b", prix: "82", couleur: Colors.yellow, chemin: "lib/images/burger (2).png"),
    Burgerclass(nom: "Burger c", prix: "82", couleur: Colors.green, chemin: "lib/images/burger (3).png"),
    Burgerclass(nom: "Burger d", prix: "82", couleur: Colors.red, chemin: "lib/images/burger.png"),
  ];

  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: burger.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return DonutTile(
            donutColor: burger[index].couleur,
            donutFlavor: burger[index].nom,
            donutPrice: burger[index].prix,
            imageName: burger[index].chemin,
          );
        });
  }
}
