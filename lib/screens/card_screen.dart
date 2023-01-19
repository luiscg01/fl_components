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
            Card(
              child: Colum (
                children: const [
                  ListTile(
                    leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
                    title: Text('Soy un titulo'),
                    subtitle: Text('Soy un subtitulo'),
                  )
                ],
              )
            )

          ],
      )
    );
  }
}