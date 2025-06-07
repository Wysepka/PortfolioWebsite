

import 'package:flutter/cupertino.dart';
import 'package:portfolio_website/enums_container.dart';
import 'package:portfolio_website/media_utility.dart';

class SocialMediaButton extends StatefulWidget{
  final SocialMediaBtnType btnType;
  const SocialMediaButton({super.key , required this.btnType});

  @override
  _SocialMediaButton createState() => _SocialMediaButton();
  
}

class _SocialMediaButton extends State<SocialMediaButton>{
  @override
  Widget build(BuildContext context) {
   return FutureBuilder<Image>(
     future: MediaUtility.getSocialMediaImage(widget.btnType, 100, 100),
     builder: (context, snapshot){
       if(snapshot.connectionState == ConnectionState.waiting){
          return Image.asset("resources/social_media/default.jpg");
       }
       else if(snapshot.hasError){
          return Image.asset("resources/social_media/default.jpg");
       }
       else if(snapshot.hasData){
         return snapshot.data!;
       }
       return Image.asset("resources/social_media/default.jpg");
   },
   );
  }
}