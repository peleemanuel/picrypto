
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';



void _Logare(BuildContext context) async{

  final TextEditingController _emaillog = TextEditingController();
  final TextEditingController _passwordlog  = TextEditingController();

  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Container(padding: EdgeInsets.all(0),
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Logare',
                style : TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white)
            ),
            IconButton(icon: FaIcon(FontAwesomeIcons.times),color: Colors.white, onPressed: () => Navigator.pop(context))
          ],
        ),
      ),
      content: Container(
        height: 500,
        width:  650,
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: const Color(0xFFFFFF),
          borderRadius:
          new BorderRadius.all(new Radius.circular(32.0)),
        ),
        child:Column(
          children: [

          ],
        ),
      ),
    );
  });
}
class NavBarDesktopTablet extends StatelessWidget{
  const NavBarDesktopTablet({Key key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                NavbarLogo(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(width: 60,),
                    NavBarItem('Acasa'),
                    SizedBox(width: 60,),
                    NavBarItem('Servicii'),
                    SizedBox(width: 60,),
                    NavBarItem('Moneda'),
                    SizedBox(width: 60,),
                    NavBarItem('Contact'),
                  ],
                ),
              ],
            ),
            TextButton(onPressed: () => _Logare(context),

                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                  side: BorderSide(color: Colors.blue, width: 2),

                ),
                child:Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child:  Text('Logare',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                )

            ),
          ],
        )
    );
  }

}