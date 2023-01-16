import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      AppBar: AppBar{
          title: const Text('Componentes en Flutter'),
          elevation: 0,
      }
      body: ListView.separeted(
        itemBuilder: (context, index) => ListTittle(
          title: Text(),
          leading: Icon(Icons.access_time_outlined),
          title: const Text(),
          onTap: () {
            final route = MaterialPageRoute(builder: (context) => ListviewScreen());
            Navigator.push(context, route);
          },
        )
        separatorBuilder: (_,_) => const Builder(),
        itemCount: 100  
      )
    );
  }
}