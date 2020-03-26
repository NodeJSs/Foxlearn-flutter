import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:example2/pages/homepage.dart';
import 'package:example2/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {"/": (context) => LoginPage(), "/home": (context) => HomePage()},
    );
  }
}
