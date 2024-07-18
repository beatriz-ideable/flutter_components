import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  final options = const['Coldplay', 'Taylor Swif', 'Rosalia', 'Maneskin'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Listview Tipo 2')
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(Icons.arrow_forward_outlined, color: Colors.indigo),
          onTap: () {
            final singer = options[i];
            print(singer);
          } ,
        ),
        separatorBuilder: (_, __) => const Divider(), //_ y __ se sulen poner cuando no vas a utilizar ese argumento
        itemCount: options.length
       )
    );
  }
}