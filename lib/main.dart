import 'package:flutter/material.dart';
import 'package:themoviedb/Theme/app_colors.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';
import 'package:themoviedb/widgets/main/main_screen_widget.dart';
import 'package:themoviedb/widgets/movie_screen/movie_screen_widget.dart';

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
            AppBarTheme(backgroundColor: AppColors.mainDarkBlue),
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainDarkBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
        '/movie_screen':(context) => MovieScreenWidget(),
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
