import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';
import 'package:themoviedb/widgets/main/main_screen_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "themoviedb",
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(backgroundColor: const Color.fromRGBO(3, 37, 65, 1)),
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
      initialRoute: '/auth',
     /*  onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(builder: (context) {
          return Scaffold(
            body: Center( 
              child: Text("Произошла ошибка навигации"),
            ),
          );
        });
      }, */
    );
  }
}
