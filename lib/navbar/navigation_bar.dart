import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navigationbar_desktop.dart';
import 'navigationbar_mobile.dart';

class NavigationBar extends StatelessWidget{
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      tablet: NavBarMobile(),
      desktop: NavBarDesktopTablet(),
    );
  }
}