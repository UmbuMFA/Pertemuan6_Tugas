import 'package:flutter/material.dart';


class ItemPage extends StatelessWidget {
  // This widget is the root of your application.
  // final Item itemArgs = ModalRoute.of(context).settings.arguments;

  // static BuildContext context;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Item Display",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     home: Scaffold(
          appBar: AppBar(
            title: Center( 
              child : Text(
              "ITEMMMMMMM",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50)
              ),
            )
          ), 

          body: Container(
            child: Text(
              "Title Page YAYAYYAYAYAYAAYA"
            ),
          ),
    )
    );
  }
}