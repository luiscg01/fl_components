class CustomCardType2 extends StatelesWidget {
  const CustomCardType2({
    key? key,
  }): super (key: key);

  Widget build (BuildContext context){
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius.circular(15)
      )
      elevation: 30,
      Child: Column(
        children: const [
          FadeInImage(
            image: const NetworkImage('https://www.noegasystems.com/wp-content/uploads/metodo-fifo.jpg')
            placeholder: AssetImage('assets/jar-loading.git'),
            width: double.infinity,
            height: 230,
            fit: Boxfit.cover,
            fadeInDuration: Duration( milliseconds: 300),
          ),

          container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInserts.only(right:20, top:10, button: 10),
            child: Text('Un hermoso paisaje'),
          )
        ],
      )
    )
  }

}