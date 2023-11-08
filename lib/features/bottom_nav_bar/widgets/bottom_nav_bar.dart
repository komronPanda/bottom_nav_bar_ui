import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../../../gen/=/assets.gen.dart';
import 'navbar_style.dart';
import 'wtab_Item.dart';

class BottomNavBar extends StatelessWidget {
  final Function(int) onTap;
  final int initialActiveIndex;

  const BottomNavBar(
      {Key? key, required this.onTap, required this.initialActiveIndex})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return StyleProvider(
      style: Style(),
      child: ConvexAppBar(
        elevation: 3,
        height: 84,
        shadowColor: Color(0x3F888A96),
        backgroundColor: Colors.white,
        style: TabStyle.reactCircle,
        curveSize: 75,
        items: [
          WTabItem(title: 'Home', iconPath: Assets.icons.homeIcon.path),
          WTabItem(title: 'Statistics', iconPath: Assets.icons.statisticsIcon.path),
          WTabItem(title: 'Chat', iconPath: Assets.icons.chatIcon.path),
          WTabItem(title: 'Profile', iconPath: Assets.icons.userIcon.path),
        ],
        initialActiveIndex: initialActiveIndex,
        onTap: onTap,
      ),
    );
  }
}
