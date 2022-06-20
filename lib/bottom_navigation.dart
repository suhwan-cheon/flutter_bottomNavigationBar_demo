import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar_demo/navbar_items.dart';
import 'package:flutter_bottomnavigationbar_demo/tab_item.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({required this.currentTab, required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(TabItem.brunch),
        _buildItem(TabItem.lunch),
        _buildItem(TabItem.dinner),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
      currentIndex: currentTab.index,
      selectedItemColor: Colors.amber,
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return navbarItems[tabIdx[tabItem]!];
  }
}
