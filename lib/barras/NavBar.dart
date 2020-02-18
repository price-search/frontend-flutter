import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:price_search/CoPage.dart';
import 'package:price_search/SNPage.dart';
import 'package:price_search/HomePage.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > 800) {
          return DesktopNavBar();
        } else {
          return MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatefulWidget {
  @override
  _DesktopNavBarState createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        //constraints:BoxConstraints(maxWidth: 12000),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                Widget>[
          Text(
            'Price Search',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 40,
            ),
          ),
          Row(
            children: <Widget>[
              MaterialButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext) => HomePage()))
                },
                child: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 35,
              ),
              MaterialButton(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext) => CoPage()))
                },
                child: Text(
                  'Cotar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 35,
              ),
              MaterialButton(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext) => SNPage()))
                },
                child: Text(
                  'Sobre Nos',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Text(
            'Price Search',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext) => HomePage()))
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                MaterialButton(
                  color: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext) => CoPage()))
                  },
                  child: Text(
                    'Cotar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                MaterialButton(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext) => SNPage()))
                  },
                  child: Text(
                    'Sobre Nós',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
