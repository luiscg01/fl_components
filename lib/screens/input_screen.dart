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
                            TextField{
                                autofocus: true,
                                initialValue: 'Fernando Herrera',
                                textCapitalization: TextCapitalization.words,
                                onChanged: (value) {
                                    print('value: $value');
                                },
                                validator:(value) {
                                    if(value == null) {
                                        return 'Este campo es requerido';
                                        return value.length <3 ?  'Minimo de 3 letras' : null;
                                    },
                                    autoValidateMode: AutoValidateMode.onUserInteraction,
                                    decoration: InputDecoration(
                                        hintText: 'Nombre del Usuario',
                                        labelText:'Nombre',
                                        helperText: 'Solo letras', 
                                        counterText: '3 caracteres',
                                        suffixIcon: Icon(Icons.group_outlined),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))            
                                        )
                                    )
                                },
                            }
                        ]
                    )
               ),
            )
        )
    }
}