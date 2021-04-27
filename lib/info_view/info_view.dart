import 'package:flutter/material.dart';

class InfoView extends StatelessWidget {
  const InfoView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Text('Investește în aurul virtual românesc',
            style: TextStyle(fontWeight: FontWeight.w800, height: 0.9,fontSize: 50),
          ),
          SizedBox(height: 30,),
          Text('Criptovaluta PiCrypto are ca rol aducerea la nivel național a tranzacțiilor nebancare fără intermediari între conturi virtuale pentru o transparență cât mai bună. Criptomonedele folosesc protocoale proof-of-work pe bază de algoritmi de hashing. SHA-256 Criptomoneda poate fi cumpărată, dar și creată.',
            style: TextStyle(fontSize: 21,height: 1.7),
          ),
        ],
      ),
    );
  }
}
