import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MidleBar extends StatelessWidget {

   List<Widget> pageChildren(double width){
     return <Widget>[
       Container(
         width: width,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
            Text('Price Seach', style: TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 50.0,
            color: Colors.white,
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text('Tentamos te atender da melhor maneira', style: TextStyle(fontSize:25.0, color: Colors.white)),
            ),
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
              padding: const EdgeInsets.symmetric(vertical: 10.0),
            ),
            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              onPressed: () => {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: Text(
                  'Pesquisar',
                  style: TextStyle(color: Colors.red),
                ),
              ), 
            )
          ]
         ),
       ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: SvgPicture.asset("lib/images/price-search.svg", width: width),
      ) 
     ];
   }
 
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,Constraints){
        if(Constraints.maxWidth>800){
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(Constraints.biggest.width/2),
          );
        }else{
          return Column(
            children: pageChildren(Constraints.biggest.width),
          );
        }
      },
    );
  }
}