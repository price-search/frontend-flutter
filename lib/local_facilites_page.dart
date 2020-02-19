import 'package:flutter/material.dart';
import 'package:price_search/bars/navbar.dart';
import 'package:price_search/bars/local_faci_midlebar.dart';

class local_facilites_page extends StatelessWidget {
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
                child: local_faci_midlebar(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
