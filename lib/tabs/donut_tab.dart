import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //prepa 1: organizar
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2), //<-- num columnas 
      
      //# elementos
      itemCount: 2,
      padding: const EdgeInsets.all(12),

      //what
      itemBuilder: (context, index) {
        return;
      });
  }
}