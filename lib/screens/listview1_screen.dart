import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  const Listview1Screen({Key? key}) : super(key: key);
  final options = const ['Megaman', 'Metal Gear', 'Super Smash', 'final fantasy'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 1'),
      ),
      body: ListView(
        children: [
          ...options.map((e) => 
            ListTile(
              trailing: const Icon(Icons.arrow_circle_down),
              title: Text(e),
            )
          )
        ],
      )
    );
  }
}