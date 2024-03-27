
import 'package:flutter/material.dart';
import 'package:home_page/cartscreen/cartpage.dart';
import 'package:home_page/homepage.dart';
import 'package:home_page/producscreen/product.dart';

void main()
{
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homepage(),
        'product':(context) => const Product(),
        'cart':(context) => const Cartpage(),
      }
       //home: Homepage(),
    ),
  );
}