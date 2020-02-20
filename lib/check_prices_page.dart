import 'package:flutter/material.dart';
import 'package:price_search/bars/nav_bar.dart';
import 'package:price_search/bars/check_prices_midle_bar.dart';

class CheckPricesPage extends StatefulWidget {
  @override
  _CheckPricesPageState createState() => _CheckPricesPageState();
}

class _CheckPricesPageState extends State<CheckPricesPage> {
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
              NavBar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 40.0),
                child: CheckPricesMidleBar(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
