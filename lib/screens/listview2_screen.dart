import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  const Listview2Screen({Key? key}) : super(key: key);
  final options = const ['Megaman', 'Metal Gear', 'Super Smash', 'final fantasy'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 1'),
        backgroundColor: Colors.red,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text( options[index  ]),
          trailing: const Icon(Icons.arrow_back_rounded),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ), 
        separatorBuilder: (_,__) => const Divider(), 
        )
    );
  }
}