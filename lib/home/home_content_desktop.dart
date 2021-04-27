

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:picrypto/info_view/image.dart';
import 'package:picrypto/info_view/info_view.dart';
import 'package:url_launcher/url_launcher.dart';

String _url = 'https://flutter.dev';

void _launchURL() async {
  await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';}

void _ContBancar(BuildContext context) async{
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cont Bancar - Virtual',
                  style : TextStyle(fontWeight: FontWeight.bold, fontSize: 26)
              ),
              IconButton(icon: FaIcon(FontAwesomeIcons.times), onPressed: () => Navigator.pop(context))
            ],
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: SizedBox(
                    height: 250,
                    child: Image.asset('assets/card.png'),
                  ),
                )
              ],
            ),
          ),
        );
      }
  );
}
class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop ({Key key}):super(key: key);

  @override

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 20,),
        Row(
          children: <Widget>[
            InfoView(),
            Expanded(child: Center(child: IllustrateView(),)),

          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    IconButton(icon: FaIcon(FontAwesomeIcons.shareAlt), onPressed: (){}),
                    Text('SHARE',
                      style:TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(width: 80,),
                Column(
                  children: [
                    IconButton(icon: FaIcon(FontAwesomeIcons.cog), onPressed: (){}),
                    Text('SETARI',
                      style:TextStyle(fontWeight: FontWeight.w900),),
                  ],
                ),
                SizedBox(width: 80,),
                Column(
                  children: [
                    IconButton(icon: FaIcon(FontAwesomeIcons.wallet), onPressed: () => _ContBancar(context)),
                    Text('WALLET',
                      style:TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(icon: FaIcon(FontAwesomeIcons.instagram), onPressed: (){
                  _url = 'https://www.instagram.com/peleemanuel/';
                  _launchURL();
                }),
                SizedBox(height: 20,),
                IconButton(icon: FaIcon(FontAwesomeIcons.linkedin), onPressed: (){
                  _url = 'https://www.linkedin.com/in/emanuel-pele-ab88831a5/';
                  _launchURL();
                }),
                SizedBox(height: 20,),
                IconButton(icon: FaIcon(FontAwesomeIcons.github), onPressed: (){
                  _url = 'https://github.com/peleemanuel';
                  _launchURL();
                }),
                SizedBox(height: 20,)
              ],
            )
          ],
        )
      ],
    );
  }
}

