
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         //child: ElevatedButtom(
            //style: ElevatedButtom.styleForm(
              //primary: Color.indigo,
              //shape: const StadiumBorder  (),
              //elevation: 0
            //),
            child: const Text('Mostrar Alerta', style: TextStyle(fontSize: 20)),
            onPressed () {

            }
         )  
      ),
      floatingActionButtom: FloatingActionButtom (
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        }
      )
    );
  }
}