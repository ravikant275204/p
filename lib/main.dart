import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'navigationbar.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(

            floatingActionButtonTheme:
            FloatingActionButtonThemeData(splashColor: Colors.white),
            bottomAppBarTheme: BottomAppBarTheme(
                color: Colors.white,
                surfaceTintColor: Colors.white,
                shadowColor: Colors.white),
            bottomAppBarColor: Colors.white),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
        );
   }
}