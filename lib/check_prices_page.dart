import 'package:flutter/material.dart';
import 'package:price_search/barras/navbar.dart';
import 'package:price_search/barras/check_p_midlebar.dart';

class check_prices_page extends StatefulWidget {
  @override
  _check_prices_pageState createState() => _check_prices_pageState();
}

class _check_prices_pageState extends State<check_prices_page> {
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
                child: check_p_midlebar(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
