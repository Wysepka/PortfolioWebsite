

import 'package:flutter/cupertino.dart';
import 'package:portfolio_website/mainPage_topBar.dart';

class MainPageScrollList extends StatefulWidget{
  const MainPageScrollList({super.key});

  @override
  _MainPageScrollList createState() => _MainPageScrollList();

}

class _MainPageScrollList extends State<MainPageScrollList>{
  @override
  Widget build(BuildContext context) {
    return ListView(children: [MainPageTopBar()],);
  }

}