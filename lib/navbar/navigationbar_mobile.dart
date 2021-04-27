import 'package:flutter/material.dart';

import 'navbar_logo.dart';

class NavBarMobile extends StatelessWidget{
  const NavBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,

        child: Column(
          children: [

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.menu),
                    onPressed: (){
                      Scaffold.of(context).openDrawer();
                    }
                ),
                NavbarLogo()
              ],
            ),
          ],
        )
    );
  }

}