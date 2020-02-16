import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text('Price Search'),
      centerTitle: true,
    ),
    body: GridView(
      padding: EdgeInsets.all(32.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: <Widget>[
        ButtonTheme(
              height: 20.0,
              child: RaisedButton(
                onPressed: () => {},
                child: Text('Pesquisa de Produtos', style: TextStyle(color: Colors.white, fontSize: 30.0),),
                ),
        ),
        ButtonTheme(
              height: 20.0,
              child: RaisedButton(
                onPressed: () => {},
                child: Text('Lista de Estabelecimentos Locais', style: TextStyle(color: Colors.white, fontSize: 30.0),),
              ), 
        ),       
      ],  
    ),
    );
  }
}