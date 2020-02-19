import 'package:flutter/material.dart';
import 'package:price_search/barras/about_us_midlebar.dart';
import 'package:price_search/barras/navbar.dart';

class about_us_page extends StatefulWidget {
  @override
  _about_us_pageState createState() => _about_us_pageState();
}

class _about_us_pageState extends State<about_us_page> {
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
                child: about_us_midlebar(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
