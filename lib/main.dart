
import 'package:burgerapp/Userdetails.dart';
import 'package:burgerapp/Home page.dart';
 import 'package:burgerapp/product02.dart';
import 'package:burgerapp/product1.dart';
import 'package:burgerapp/product3.dart';
import 'package:burgerapp/product4.dart';

import 'package:burgerapp/splashscreen.dart';
import 'package:flutter/material.dart';

import 'logopage.dart';


  void main(){
    runApp(MyApp());
  }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BURGER KING",
      home:splashscreen(),
    );
  }
}
