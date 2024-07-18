import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  final options = const['Coldplay', 'Taylor Swif', 'Rosalia', 'Maneskin'];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          
          ...options.map((singer) => ListTile(
            title: Text(singer),
            trailing: const Icon(Icons.arrow_forward_outlined),
          )).toList() // ... (spread): para extraer cada uno de los elementos de la lista
          
        ],
      )
    );
  }
}