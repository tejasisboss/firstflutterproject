import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
