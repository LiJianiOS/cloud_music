/*
* Author : LiJiqqi
* Date : 2020/4/8
*/



import 'package:flutter/material.dart';
import 'package:cloud_music/base_framework/utils/platform_utils.dart';
import 'package:package_info/package_info.dart';


/// 应用缓存

class AppCacheModel extends ChangeNotifier{

  //以下只是DEMO 演示，
  PackageInfo packageInfo;
  String appVersion;
  String buildNum;

  AppCacheModel(){
    ///这里只是demo使用
    initAppInfo();
  }


  initAppInfo()async{
    packageInfo = await PlatformUtils.getAppPackageInfo();
    appVersion = await PlatformUtils.getAppVersion();
    buildNum = await PlatformUtils.getBuildNum();
  }


}