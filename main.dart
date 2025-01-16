import 'package:flutter/material.dart';
import 'package:hello/pages/first_page.dart';
import 'package:hello/pages/second_page.dart';
import 'package:hello/pages/home_page.dart';
import 'package:hello/pages/settings.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first_page(),
      routes: {
        '/first_page':(context) => first_page(),
        '/home_page':(context) => home_page(),
        '/settings_page':(context) =>settings(),
      },
    );
  }
}



