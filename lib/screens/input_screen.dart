class inputScreen extends StatefullsWidget {

    const inputScreen{key? key}: super (key : key);

    Widget build (BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text ('Inputs y Forms'),
            )
            body: SingleChildScrollView(
               child: Padding(
                    padding: const EdgeInserts.symetric(horizontal: 20, vertical: 10),
                    child: Column(
                        children: [
                           CustomInputField(labelText: 'Nombre', hintText: 'Nombre de Usuario')
                           SizeBox(height: 30)

                          CustomInputField(labelText: 'Apellido', hintText: 'Apellido de Usuario')
                           SizeBox(height: 30)

                           CustomInputField(labelText: 'Correo', hintText: 'Correo de Usuario', keyboardType: TextInputType.emailAddress,)
                           SizeBox(height: 30)

                           CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña de Usuario', obscureText: true)
                           SizeBox(height: 30)
                        ]
                    )
               ),
            )
        )
    }
}