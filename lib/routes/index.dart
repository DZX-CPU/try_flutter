import 'package:flutter/material.dart';
import 'package:last_test/pages/Login/index.dart';
import 'package:last_test/pages/Main/index.dart';

Widget getRootWidget(){
  return MaterialApp(

    routes:getRootRoutes(),
  );
}

Map<String, Widget Function(BuildContext)>getRootRoutes(){
  return{
    "/":(context)=>MainPage(),//主页路由
    "/login":(context)=>LoginPage(),//登录页面
  };
}