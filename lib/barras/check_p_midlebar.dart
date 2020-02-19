import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class check_p_midlebar extends StatelessWidget {
  @override
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Alguma coisa para fazer pesquisa dos produtos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Colors.white,
                  )),
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
      builder: (context, Constraints) {
        if (Constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(Constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(Constraints.biggest.width),
          );
        }
      },
    );
  }
}
