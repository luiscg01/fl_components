


import 'package:counter_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      initialRoute: AppRoutes,
      home: const Listview2Screen(),
      routes: AppRoutes.getAppRoutes,
      onGenerateRoute: AppRoutes.onGenerateRoute
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.indigo

        appBarTheme: AppBarTheme(
          color: Colors.red
          elevation: 0
        )
        
      ) ,
    );
  }
}