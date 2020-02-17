import 'package:flutter/material.dart';

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
        child: Image.asset("lib/images/ps.png", width: width),
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