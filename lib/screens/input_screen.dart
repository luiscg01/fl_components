class inputScreen extends StatefullsWidget {

    const inputScreen{key? key}: super (key : key);

    Widget build (BuildContext context){
        final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

        final Map<String, String>  formValues = {
            'first name': 'fernando',
            'last name': 'herrera',
            'email': 'fernando@google.com',
            'password': '123456',
            'user': 'admin',

        }
        return Scaffold(
            appBar: AppBar(
                title: Text ('Inputs y Forms'),
            )
            body: SingleChildScrollView(
               child: Padding(
                    padding: const EdgeInserts.symetric(horizontal: 20, vertical: 10),
                    child: form(
                        key: myFormKey,
                        child: Column(
                            children: [
                            CustomInputField(labelText: 'Nombre', hintText: 'Nombre de Usuario', formProperty: 'first name', formValues: formValues)
                            SizeBox(height: 30),

                            CustomInputField(labelText: 'Apellido', hintText: 'Apellido de Usuario', formProperty: 'last name', formValues: formValues)
                            SizeBox(height: 30),

                            CustomInputField(labelText: 'Correo', hintText: 'Correo de Usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues)
                            SizeBox(height: 30),

                            CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña de Usuario', obscureText: true, formProperty: 'password', formValues: formValues)
                            SizeBox(height: 30),

                            DropdownbuFormField(
                                value: 'Admin',
                                items: const [
                                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                                    DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                                    DropdownMenuItem(value: 'Jr. Dev', child: Text('Jr. Dev')),

                                ],
                                onChanged:(value) {
                                    formValues['role'] = value ?? 'Admin';
                                }
                            ),

                            ElevatedBotton (
                                  child const SizeBox(
                                  width: double.infinity,
                                  child: Text('Guardar'),
                                )
                                onPressed() {
                                    FocusScope.of(context).requestFocus(FocusNode());
                                    if(!myFormKey.currentState.validate()) {

                                    }
                                }
                            )
                    
                            ]
                        )
                    )
               ),
            )
        )
    }
}