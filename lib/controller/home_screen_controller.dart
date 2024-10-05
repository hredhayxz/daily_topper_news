import 'package:daily_topper_news/data/model/news_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  // News menu list
  final List<NewsMenuModel> _menuData = [
    NewsMenuModel(menuName: 'Trending', menuIcon: Icons.trending_up),
    NewsMenuModel(menuName: 'Top 10 Today', menuIcon: Icons.star),
    NewsMenuModel(menuName: 'Archived News', menuIcon: Icons.bookmark),
    NewsMenuModel(menuName: 'Marked News', menuIcon: Icons.border_color)
  ];

  List<NewsMenuModel> get menuData => _menuData;
}
