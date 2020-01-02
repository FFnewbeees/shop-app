import 'package:flutter/material.dart';
import 'screens/products_overview_screen.dart';
import 'screens/products_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Boi',
      theme: ThemeData(
      
        primarySwatch: Colors.yellow,
        accentColor: Colors.pinkAccent[100],
        fontFamily: 'NanumGothic'
      ),
      home: ProductOverviewScreen(),
      routes: {
        ProductDetailScreen.routeName:(ctx) => ProductDetailScreen(),
      },
    );
  }
}


