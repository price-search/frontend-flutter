import 'package:flutter/material.dart';
import 'package:price_search/barras/NavBar.dart';

class CoPage extends StatefulWidget {
  @override
  _CoPageState createState() => _CoPageState();
}

class _CoPageState extends State<CoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(139, 0, 0, 1.0),
              Color.fromRGBO(25, 25, 112, 1.0)
            ],
          ),
        ),
        child: Column(
          children: <Widget>[NavBar()],
        ),
      ),
    );
  }
}
