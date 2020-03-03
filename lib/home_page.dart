import 'package:flutter/material.dart';
import 'package:price_search/bars/home_page_midle_bar.dart';
import 'package:price_search/bars/nav_bar.dart';

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
            colors: [
              Color.fromRGBO(204, 229, 255, 1.0),
              Color.fromRGBO(230, 242, 255, 1.0)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavBar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 40.0),
                child: HomePageMidleBar(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
