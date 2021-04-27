
import 'package:flutter/material.dart';
import 'package:picrypto/info_view/image.dart';
import 'package:picrypto/info_view/info_view.dart';

class HomeContentMobile extends StatelessWidget {
  HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          InfoView(),
          SizedBox(height: 50,),
          IllustrateView(),
        ],
      ),
    );
  }
}
