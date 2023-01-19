class CustomCardType2 extends StatelesWidget {
  const CustomCardType2({
    key? key,
  }): super (key: key);

  Widget build (BuildContext context){
    return Card(
      elevation: 30,
      Child: Column(
        children: const [
          FadeInImage(
            image: const NetworkImage('https://www.noegasystems.com/wp-content/uploads/metodo-fifo.jpg')
            placeholder: AssetImage('assets/jar-loading.git'),
          )
        ],
      )
    )
  }

}