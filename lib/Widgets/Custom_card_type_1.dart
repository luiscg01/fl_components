class CustomCardType1 extends StatelesWidget {
  const CustomCardType1({
    key? key,
  }): super (key: key);

  Widget build (BuildContext context){
    return  Card(
              child: Colum (
                children: const [
                  ListTile(
                    leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
                    title: Text('Soy un titulo'),
                    subtitle: Text('Soy un subtitulo'),
                  )
                  Row(
                    madeAxisAligment: MainAxisAligment.end,
                    children:   [
                      TextButton(
                        onPressed: () {}
                        child: const Text('Cancel')
                        Style: TextButton.styleFrom(primary: Colors.indigo)
                      )

                      TextButton(
                        onPressed: () {}
                        child: const Text('OK')
                      )
                    ]
                  )
                ],
              )
            )
  }

}