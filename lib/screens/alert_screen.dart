
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS() {
    showcupertinoDialogIOS() {
      context:
      builder: (context) {
        barrierDismissible: false,
        return CupertinoAlertDialog(
          title: Text('titulo'),
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
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK')
              )
            ],
        );
      }
    };  
  }
  
  void displayDialogAndroid() {
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
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK')
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
            onPressed: () => Platform.isAndroid
            ? displayDialogAndroid (context)
            : displayDialogIOS (context)
            
         )  
      ),
      floatingActionButtom: FloatingActionButtom (
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)

      )
  }
}