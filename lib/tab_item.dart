import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar_demo/brunch.dart';
import 'package:flutter_bottomnavigationbar_demo/dinner.dart';
import 'package:flutter_bottomnavigationbar_demo/lunch.dart';

enum TabItem { brunch, lunch, dinner }

const Map<TabItem, String> tabName = {
  TabItem.brunch: 'brunch',
  TabItem.lunch: 'lunch',
  TabItem.dinner: 'dinner',
};

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.brunch: Colors.red,
  TabItem.lunch: Colors.green,
  TabItem.dinner: Colors.blue,
};

const Map<TabItem, int> tabIdx = {
  TabItem.brunch: 0,
  TabItem.lunch: 1,
  TabItem.dinner: 2,
};

Map<TabItem, Widget> tabScreen = {
  TabItem.brunch: const BrunchScreen(),
  TabItem.lunch: const LunchScreen(),
  TabItem.dinner: const DinnerScreen(),
};
