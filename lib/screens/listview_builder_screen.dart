class ListViewBuilderScreen extends StatefullWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);
  
class _ListViewBuilderScreenState extends State<ListViewBuilderScreen>{

  final List <int> imagesIds = [1,2,3,4,5,6,7,8,9,10]
  final ScrollControler scrollControler = new ScrollControler();
  bool isLoading = false;
  void initState() {
    super.initState();
    scrollControler.addListener(() {
          if(scrollControler.position.pixels + 500) <= scrollControler.position.maxScrollExent) {
            fetchData();
          }
      });
    }
  }

  Future fetchData()  async{
    if(isLoading) return;
    isLoading = true;
    setState(() {})

    await Future.delayed(const Duration(seconds: 3))
    add5();
    isLoading = false;
    setState(() {})
  }

  @override
  Widget build(BuildContext context) {
    return const Container(
      child: Stack(
      children:  [
      ListView.builder (
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

      Container(
        color: Colors.white,
        height: 60,
        width: 60,
        child: CircularProgresIndicator(color: AppTheme.primary),
        padding: EdgeInsets.al(10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          shape: BoxShape.ciircle
        )
      )
    ],
    ),
    ),
  }
}