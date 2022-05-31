import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

 @override 
 Widget build(BuildContext context) {
   return MaterialApp(
     title: "themoviedb",
     theme: ThemeData(
       appBarTheme: AppBarTheme(
         backgroundColor: const Color.fromRGBO(3, 37, 65, 1)),
       primarySwatch: Colors.blue,
      ),
    home: AuthWidget(),
   );
 }
}