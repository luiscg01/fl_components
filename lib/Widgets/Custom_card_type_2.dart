class CustomCardType2 extends StatelesWidget {

  final String imageUrl;
  final String name;

  const CustomCardType2({  key? key, required  this.imageUrl, this.name}): super (key: key);

  Widget build (BuildContext context){
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius.circular(15)
      )
      elevation: 30,
      Child: Column(
        children:  [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: AssetImage('assets/jar-loading.git'),
            width: double.infinity,
            height: 230,
            fit: Boxfit.cover,
            fadeInDuration: Duration( milliseconds: 300),
          ),
          if(name != null) {
            container(
            alignment: AlignmentDirectional.centerEnd,
            padding: EdgeInserts.only(right:20, top:10, button: 10),
            child: Text(name ?? 'No tittle'),
          )
          }
        ],
      )
    )
  }

}