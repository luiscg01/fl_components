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
                                    
                                }

                            }
                        ]
                    )
               ),
            )
        )
    }
}