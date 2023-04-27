import 'package:flutter/material.dart';
import 'package:kahveciapp/sayfalar/%C4%B1ntro.dart';
import 'package:kahveciapp/sayfalar/ana_sayfa.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: tanitimPage(),
     theme: ThemeData(
       primarySwatch: Colors.orange,
       brightness: Brightness.light,
     ),


    );
  }
}




