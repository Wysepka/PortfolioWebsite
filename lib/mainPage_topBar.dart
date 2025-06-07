

import 'package:flutter/cupertino.dart';
import 'package:portfolio_website/enums_container.dart';
import 'package:portfolio_website/socialMedia_Button.dart';

class MainPageTopBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,children: [
      SocialMediaButton(btnType: SocialMediaBtnType.github),
      SocialMediaButton(btnType: SocialMediaBtnType.linkedin)],);
  }

}