import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerPrice;
  final burgerColor;
  final String imageName;
  final double borderRadius = 12;

  const BurgerTile(
      {super.key,
      required this.burgerColor,
      required this.burgerFlavor,
      required this.burgerPrice,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: burgerColor[50],
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            //prix
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: burgerColor[100],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(borderRadius),
                            topRight: Radius.circular(borderRadius))),
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      '\$$burgerPrice',
                      style: TextStyle(
                          color: burgerColor[800],
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
              burgerFlavor,
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
