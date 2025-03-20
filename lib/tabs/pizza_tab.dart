import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {

  //lust of donuts
  final List pizzaOnSale = [
    //donutflabor, price, color, imageName
    ["Ice Cream", "36", Colors.purple, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.orange, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.lightBlue, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.pinkAccent, "lib/images/chocolate_donut.png"]
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //prepa 1: organizar
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2), //<-- num columnas 
      
      //# elementos
      itemCount: 4,
      padding: const EdgeInsets.all(12),

      //qué elemento
      itemBuilder: (context, index) {

        return DonutTile (
            donutFlavor: pizzaOnSale[index][0],
            donutPrice: pizzaOnSale[index][1],
            donutColor: pizzaOnSale[index][2],
            imageName: pizzaOnSale[index][3]
        );
      });
  }
}