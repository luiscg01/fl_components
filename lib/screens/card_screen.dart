import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar{
        tittle: const Text('Card Widget'),
      },  
      body: ListView( 
          padding: const EdgeInsets.symetric(horizontal: 20, vertical: 30),
          children: const [
           CustomCardType1(),
           SizedBox(height: 10),
           CustomCardType1(name: 'Un hermoso paisaje', imageUrl: 'https://www.noegasystems.com/wp-content/uploads/metodo-fifo.jpg'),
           CustomCardType2(),
           SizedBox(height: 10),
            CustomCardType2(imageUrl: 'https://www.noegasystems.com/wp-content/uploads/metodo-fifo.jpg'),
          ],
      )
    );
  }
}