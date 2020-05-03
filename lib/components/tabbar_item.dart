
import 'package:flutter/cupertino.dart';

class TabBarItem extends BottomNavigationBarItem {
  TabBarItem(String iconname, String title):super(
    icon: Image.asset("assets/tabbar/$iconname.png", width: 30,),
    activeIcon: Image.asset("assets/tabbar/${iconname}_selected.png", width: 30,),
    title: Text(title),
  );
}