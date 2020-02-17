import 'package:flutter/material.dart';
import 'package:price_search/barras/NavBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromRGBO(255, 0, 0, 1.0),Color.fromRGBO(0, 0, 255, 1.0)],
          ),
        ),
        child: Column(
          children: <Widget>[NavBar()],
        ),
      ),
    );
  }
}