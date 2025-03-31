import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {

  //lust of donuts
  final List pizzaOnSale = [
    //donutflabor, price, color, imageName
    ["Ice Cream", "36", "Pizza Hut", Colors.purple, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", "Domino's", Colors.orange, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", "wEH", Colors.lightBlue, "lib/images/grape_donut.png"],
    ["Choco", "95", "Supreme", Colors.pink, "lib/images/chocolate_donut.png"]
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //prepa 1: organizar
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5), //<-- num columnas 
      
      //# elementos
      itemCount: 4,
      padding: const EdgeInsets.all(12),

      //qué elemento
      itemBuilder: (context, index) {

        return DonutTile (
            donutFlavor: pizzaOnSale[index][0],
            donutPrice: pizzaOnSale[index][1],
            donutStore: pizzaOnSale[index][2],
            donutColor: pizzaOnSale[index][3],
            imageName: pizzaOnSale[index][4]
        );
      });
  }
}