import 'package:flutter/material.dart';
import 'package:massenger_mock_homepage/Src/homestuct.dart';
import 'Src/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Massenger",

      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          secondary: Colors.deepPurple,
        ),
      ),

initialRoute: HomeStructure.routeName,
      routes: routes,
   //   home: HomeStructure(),

    );
  }
}
