import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {

  //lust of donuts
  final List donutsOnSale = [
    //donutflabor, price, color, imageName
    ["Ice Cream", "36", "Krispy Kreme", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", "Dunkin Donuts", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84","Krazy Donuts", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", "BB Donas", Colors.brown, "lib/images/chocolate_donut.png"]
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //prepa 1: organizar
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        //proporción
        childAspectRatio: 1/1.6), //<-- num columnas 
        
      //# elementos
      itemCount: 4,
      padding: const EdgeInsets.all(12),

      //qué elemento
      itemBuilder: (context, index) {

        return DonutTile (
            donutFlavor: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1],
            donutStore: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4]
        );
      });
  }
}