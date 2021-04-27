import 'package:flutter/material.dart';

class IllustrateView extends StatelessWidget {
  IllustrateView({Key key}) : super(key :key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 350,
        width: 350,
        child: Image.asset('assets/illustrate.png')
    );
  }
}
