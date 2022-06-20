import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar_demo/bottom_navigation.dart';
import 'package:flutter_bottomnavigationbar_demo/tab_item.dart';
import 'package:flutter_bottomnavigationbar_demo/tab_navigator.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var _currentTab = TabItem.brunch;

  final _navigatorKeys = {
    TabItem.brunch: GlobalKey<NavigatorState>(),
    TabItem.lunch: GlobalKey<NavigatorState>(),
    TabItem.dinner: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      /// 네비게이션 탭을 누르면, 해당 네비의 첫 스크린으로 이동!
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentTab]!.currentState!.maybePop();

        if (isFirstRouteInCurrentTab) {
          // 메인 화면이 아닌 경우
          if (_currentTab != TabItem.brunch) {
            // 메인 화면으로 이동
            _selectTab(TabItem.brunch);
            // 앱 종료 방지
            return false;
          }
        }

        /// 네비게이션 바의 첫번째 스크린인 경우, 앱 종료
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            _buildOffstageNavigator(TabItem.brunch),
            _buildOffstageNavigator(TabItem.lunch),
            _buildOffstageNavigator(TabItem.dinner),
          ],
        ),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    /// (offstage == false) -> 트리에서 완전히 제거된다.
    return Offstage(
        offstage: _currentTab != tabItem,
        child: TabNavigator(
          navigatorKey: _navigatorKeys[tabItem],
          tabItem: tabItem,
        ));
  }
}
