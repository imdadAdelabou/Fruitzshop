import 'package:flutter/material.dart';
import 'package:fruitzshop/NewUser/Description.dart';
import 'package:fruitzshop/Screen1/HomeScreen.dart';
import 'package:fruitzshop/firstScreen.dart';
import 'package:fruitzshop/providers/basket_lists.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
      routes: {
        "/homeScreen": (context) => HomeScreen(),
        "/Description": (context) => Description(),
      },
    );
  }
}
