class ListViewBuilder extends StatelessWidget {
   
  const ListViewBuilder({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body MediaQuery.removePadding(
      removeTop: true,
      removeBottom: true,
      child: ListView.builder (
        itemCount:10,
        itemBuilder: (BuildContext context, int index) {
         return FadeInImage(
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            placeholder: const AssetImage('assets/jar-loading.gif'), 
            image: NetWorkImage('')
            );
        },
      ),
     ),
    );
  }
}