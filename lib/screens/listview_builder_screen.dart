class ListViewBuilderScreen extends StatefullWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);
  
class _ListViewBuilderScreenState extends State<ListViewBuilderScreen>{

  final List <int> imagesIds = [1,2,3,4,5,6,7,8,9,10]
  final ScrollControler scrollControler = new ScrollControler();

  void initState() {
    super.initState();
    scrollControler.addListener((){
        print('')
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body MediaQuery.removePadding(
      removeTop: true,
      removeBottom: true,
      child: ListView.builder (
        physics: const BouncingScrollPhysics(),
        controller: scrollControler,
        itemCount:imagesIds.length,
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
}