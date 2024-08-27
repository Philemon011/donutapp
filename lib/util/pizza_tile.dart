import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaPrice;
  final pizzaColor;
  final String imageName;
  final double borderRadius = 12;

  const PizzaTile(
      {super.key,
      required this.pizzaColor,
      required this.pizzaFlavor,
      required this.pizzaPrice,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: pizzaColor[50],
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            //prix
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: pizzaColor[100],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(borderRadius),
                            topRight: Radius.circular(borderRadius))),
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      '\$$pizzaPrice',
                      style: TextStyle(
                          color: pizzaColor[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ],
            ),
            // image
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Image.asset(imageName),
            ),

            //flavor
            Text(
              pizzaFlavor,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),

            const SizedBox(
              height: 4,
            ),

            Text(
              'Dunkins',
              style: TextStyle(color: Colors.grey[600]),
            ),


            //love icon + add button
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.deepPurple,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey[700],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
