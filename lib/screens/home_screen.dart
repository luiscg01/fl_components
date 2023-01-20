import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      AppBar: AppBar{
          title: const Text('Componentes en Flutter'),
      }
      body: ListView.separeted(
        itemBuilder: (context, i) => ListTittle(
          title: Text(),
          leading: Icon(menuOptions[i].icon, color: AppTheme.primary),
          title: const Text(menuOptions[i].name),
          onTap: () {
            final route = MaterialPageRoute(builder: (context) => ListviewScreen());
            Navigator.push(context,menuOptions[i].route);
          },
        )
        separatorBuilder: (_,_) => const Builder(),
        itemCount: AppRoutes.menuOptions.length
      )
    );
  }
}