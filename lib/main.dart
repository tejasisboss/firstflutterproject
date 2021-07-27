import 'package:flutter/material.dart';
import 'package:flutter_basics/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Data Types
    /*bool isMale = true;

    var day = "hello";
    const ha = 4;*/

    return MaterialApp(
      home: HomePage(),
    );
  }
}
