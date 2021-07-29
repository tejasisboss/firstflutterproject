import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/home_page.dart';
import 'package:flutter_basics/pages/login_page.dart';
import 'package:flutter_basics/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

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
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.roboto().fontFamily,
        //primaryTextTheme: GoogleFonts.lalezarTextTheme().,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //darkTheme: ThemeData.dark(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
