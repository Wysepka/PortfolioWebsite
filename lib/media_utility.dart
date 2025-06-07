

import 'dart:io';
import 'dart:ui';
import "package:flutter/material.dart";
import 'package:portfolio_website/enums_container.dart';
import 'package:path/path.dart' as p;

const String defaultSocialMediaBtnPath = "resources/social_media/default_btn.jpg";
const String socialMediaBtnPath = "resources/social_media";

class MediaUtility{
  static Future<Image> getSocialMediaImage(SocialMediaBtnType btnType , int width, int height) async {
    switch(btnType){
      case SocialMediaBtnType.invalid:
        String path = p.join(socialMediaBtnPath , "default.jpg");
        File pathFile = File(path);
        if(!await pathFile.exists()){
          throw Exception("Social Media Btn image: $path does not exists");
        }
        return Image.asset(path);
      case SocialMediaBtnType.github:
        String path = p.join(socialMediaBtnPath , "github.png");
        File pathFile = File(path);
        if(!await pathFile.exists()){
          throw Exception("Social Media Btn image: $path does not exists");
        }
        return Image.asset(path);
      case SocialMediaBtnType.linkedin:
        String path = p.join(socialMediaBtnPath , "linkedin.png");
        File pathFile = File(path);
        if(!await pathFile.exists()){
          throw Exception("Social Media Btn image: $path does not exists");
        }
        return Image.asset(path);
    }
  }
}