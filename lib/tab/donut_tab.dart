import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

// ignore: must_be_immutable
class DonutTab extends StatelessWidget {
  List donutsOnsale = [
    ["Ice Cream", "36", Colors.blue, "lib/images/donut (1).png"],
    ["Strawberry", "45", Colors.red, "lib/images/donut (2).png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/donut.png"],
    ["Choco", "95", Colors.blue, "lib/images/doughnut.png"]
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutsOnsale.length,
        padding: EdgeInsets.all(12),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            childAspectRatio: 1/1.5),
        itemBuilder: (context, index) {
          return DonutTile(
            donutColor: donutsOnsale[index][2],
            donutFlavor: donutsOnsale[index][0],
            donutPrice: donutsOnsale[index][1],
            imageName: donutsOnsale[index][3],
          );
        });
  }
}
