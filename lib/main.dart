import 'package:flutter/material.dart';
import 'package:massenger_mock_homepage/Src/homestuct.dart';
import 'Src/routes.dart';
import 'Src/snippets.dart';
/*
 themes()
{
  bool _dark = true;
void setter(){
  _dark = !_dark;
}
}
*/


void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static bool themeset = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Massenger",

      theme: (themeset)?MyTheme.darkTheme:MyTheme.lightTheme,
      /*ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          secondary: Colors.deepPurple,
        ),
      ),*/

      initialRoute: HomeStructure.routeName,
      routes: routes,
      //   home: HomeStructure(),

    );
  }
}




/*

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Massenger",

      theme: (themes().dark)?MyTheme.darkTheme:MyTheme.lightTheme,
      */
/*ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          secondary: Colors.deepPurple,
        ),
      ),*//*


      initialRoute: HomeStructure.routeName,
      routes: routes,
      //   home: HomeStructure(),

    );
  }
}
*/
