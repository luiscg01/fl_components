


import 'package:counter_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      initialRoute: 'home',
      home: const Listview2Screen(),
      routes: {
        'home':  (BuildContext context) => const HomeScreen(),
        'listview1':  (BuildContext context) => const Listview1Screen(),
        'listview2':  (BuildContext context) => const Listview2Screen(),
        'alert':  (BuildContext context) => const AlertScreen(),
        'card':  (BuildContext context) => const CardScreen(),

      },
      onGenerateRoute: (settings){
        return  MaterialPageRoute (
          builder: (context) =>  const AlertScreen(),
        )
      }
    );
  }
}