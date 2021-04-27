import 'package:flutter/material.dart';
import 'package:picrypto/centered_view/centered_view.dart';
import 'package:picrypto/navbar/navigation_bar.dart';
import 'package:picrypto/widgets/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'home_content_desktop.dart';
import 'home_content_mobile.dart';

class HomeView extends StatelessWidget{
  const HomeView({Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation)=>Scaffold(
            drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile || sizingInformation.deviceScreenType == DeviceScreenType.tablet ? NavigationDrawer() : null,
            backgroundColor: Colors.white,
            body: CenteredView(
              child: Column(

                children: <Widget>[
                  NavigationBar(),
                  Expanded(child:ScreenTypeLayout(
                    mobile: HomeContentMobile(),
                    tablet: HomeContentMobile(),
                    desktop: HomeContentDesktop(),
                  )
                  )
                ],
              ),
            )
        )
    );
  }

}