import 'package:flutter/material.dart';
import 'package:last_test/pages/Login/index.dart';
import 'package:last_test/pages/Main/index.dart';

/// 构建应用根组件
Widget getRootWidget(){
  return MaterialApp(
    // 注册应用全局路由表
    routes:getRootRoutes(),
  );
}

/// 定义应用全局路由表
/// - "/"       → 主页（底部导航框架）
/// - "/login"  → 登录页
Map<String, Widget Function(BuildContext)>getRootRoutes(){
  return{
    "/":(context)=>MainPage(),//主页路由
    "/login":(context)=>LoginPage(),//登录页面
  };
}