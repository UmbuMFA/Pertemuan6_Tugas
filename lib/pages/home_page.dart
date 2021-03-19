
import 'package:flutter/material.dart';
import 'package:pertemuan6_tugas/pages/item_page.dart';

class Item {
  String name;
  int price;

  Item({this.name, this.price});
}

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'sugar', price: 5000),
    Item(name: 'salt', price: 2000)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'HomePage',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
              title: Center(
            child: Text("Home",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50)),
          )),
          body: Container(
              margin: EdgeInsets.all(8),
              child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return InkWell(
                      onTap: () {
                        // Navigator.pushNamed(
                        //   context,
                        //   '/item',
                        // );
                        Navigator.push(context,
                          
                          MaterialPageRoute(builder: (context) => ItemPage()),);
                      },
                      child: Card(
                        child: Row(children: [
                          Expanded(child: Text(item.name)),
                          Expanded(
                              child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          ))
                        ]),
                      ),
                    );
                  })),
        ));
  }
}
