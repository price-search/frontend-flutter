import 'package:flutter/material.dart';

class EstablishmentsMidleBar extends StatefulWidget {
  @override
  _EstablishmentsMidleBarState createState() => _EstablishmentsMidleBarState();
}

class _EstablishmentsMidleBarState extends State<EstablishmentsMidleBar> {
  Widget getListView() {
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Ola eu sou o Lucas"),
          subtitle: Text("Bom dia para voce"),
        )
      ],
    );
  }

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Price Seach',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Colors.white,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text('Search our establishments.',
                    style: TextStyle(fontSize: 25.0, color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 700,
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.white,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      MaterialButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        onPressed: getListView,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 40.0),
                          child: Text(
                            'Search',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
              ),
            ]),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset("lib/images/ps.png", width: width),
        //SvgPicture.asset("lib/images/price-search.svg", width: width),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
/*
class EstablishmentsMidleBar extends StatefulWidget {
  Widget getListView() {
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Ola eu sou o Lucas"),
          subtitle: Text("Bom dia para voce"),
        )
      ],
    );
  }

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Price Seach',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Colors.white,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text('Search our establishments.',
                    style: TextStyle(fontSize: 25.0, color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 700,
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.white,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      MaterialButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        onPressed: getListView,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 40.0),
                          child: Text(
                            'Search',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
              ),
            ]),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset("lib/images/ps.png", width: width),
        //SvgPicture.asset("lib/images/price-search.svg", width: width),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
*/
