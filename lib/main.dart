import 'package:flutter/material.dart';
import 'package:pertemuan6_tugas/pages/home_page.dart';
import 'package:pertemuan6_tugas/pages/item_page.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => HomePage(),
      '/item':(context) => ItemPage(),
    },
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container()
    );
  }
}

