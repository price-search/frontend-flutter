import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,Constraints){
        if(Constraints.maxWidth>800){
          return DesktopNavBar();
        }
        else{
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
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal:40),
      child: Container(
        constraints:BoxConstraints(maxWidth: 12000),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Price Search', style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),
            ),
            Row(
              children: <Widget>[
                Text('Home', style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 30,
                ),
                Text('Cotar', style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 30,
                ),
                Text('Sobre Nos', style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  onPressed: null,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(BorderRedius.all(Redius.circular(20.0))),
                  child: Text('Começar', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}