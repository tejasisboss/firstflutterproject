import 'package:flutter/material.dart';
import 'package:flutter_basics/models/catalog.dart';
import 'package:flutter_basics/widgets/drawer.dart';
import 'package:flutter_basics/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        //elevation: 0,
        //iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Sample App",
          /*style: TextStyle(
            color: Colors.black,
          ),*/
        ),
      ),
      /*body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter"),
        ),
      ),*/
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          //itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              //item: CatalogModel.items[index],
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
