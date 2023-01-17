


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
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute
    );
  }
}