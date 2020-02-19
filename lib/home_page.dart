import 'package:flutter/material.dart';
import 'package:price_search/bars/home_page_midlebar.dart';
import 'package:price_search/bars/navbar.dart';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 40.0),
                child: home_page_midlebar(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
