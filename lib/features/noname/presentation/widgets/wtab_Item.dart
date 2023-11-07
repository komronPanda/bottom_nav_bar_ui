import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'wactive_icon.dart';
import 'wicon.dart';

TabItem WTabItem({required String title, required String iconPath}){
  return TabItem(
    activeIcon: WActiveIcon(title: title, icon: iconPath),
    icon: WIcon(icon: iconPath),
    title: 'Home',
  );
}