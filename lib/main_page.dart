

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_website/mainPage_ScrollList.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget
{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My List')),
        body: MainPageScrollList(),  // ← your widget that builds a ListView
      ),
    );
  }

}