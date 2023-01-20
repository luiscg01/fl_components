class AppRoutes {
  static const initialRoute = 'home'

  static final menuOptions = <MenuOption>{
    //TODO: borrar home
    MenuOption(route: 'home', name: 'HomeScreen',   screen: const HomeScreen(), icon: Icons.home_max_sharp),
    MenuOption(route: 'listview1', name: 'listview tipo 1',   screen: const listviewScreen(), icon: Icons.home_max_sharp),
    MenuOption(route: 'listview2', name: 'listview tipo 2',   screen: const listview1Screen(), icon: Icons.home_max_sharp),
    MenuOption(route: 'alert', name: 'Alertas',   screen: const AlertScreen(), icon: Icons.home_max_sharp),
    MenuOption(route: 'card', name: 'Tarjetas - Cards ',   screen: const CardScreen(), icon: Icons.home_max_sharp),
  };

  static Map<String , Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {}
    
    for(final option in menuOptions) {
      appRoutes.addALL({option.route: (BuildContext context) =>  option.screen})
    }

    return
  }

  //static Map<String, Widget function(BuildContext)> routes = {
    //    'home':  (BuildContext context) => const HomeScreen(),
    //  'listview1':  (BuildContext context) => const Listview1Screen(),
    //  'listview2':  (BuildContext context) => const Listview2Screen(),
    //  'alert':  (BuildContext context) => const AlertScreen(),
    //  'card':  (BuildContext context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute<dynamic> (settings){
        return  MaterialPageRoute (
        builder: (context) =>  const AlertScreen(),
        );  
}