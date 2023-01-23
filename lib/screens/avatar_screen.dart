import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {

    const AvatarScreen({Key? key}) : super(key: key);

    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('AvatarScreen'),
                backgroundColor: Colors.red,
                actions: [
                    Container(
                        margin: const EdgeInsets.only(rigth: 5),
                        child: const CircleAvatar(
                            child: Text('SL')
                            backgroundColor: Colors.indigo(900) 
                        ),   
                    )   
                ],
            ),
            body: Center (
                child: CircleAvatar(
                    maxRadius: 100,
                    backgroundImage: NetworkImage("https://www.google.es/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"),
                )
            ),
        );
    }
}