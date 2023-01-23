
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  void displayDialog() {
      showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: Text('titulo'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es ek contenido de la alerta'),
                SizeBox(height: 10),
                FlutterLogo(size: 100)
              ],
            )
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar')
              )
            ],
          );
        }
      );
  }

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
            onPressed:  displayDialog
            
         )  
      ),
      floatingActionButtom: FloatingActionButtom (
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)

      )
    );
  }
}