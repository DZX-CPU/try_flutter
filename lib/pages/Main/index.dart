import 'package:flutter/material.dart';
import 'package:last_test/pages/Cart/index.dart';
import 'package:last_test/pages/Category/index.dart';
import 'package:last_test/pages/Home/index.dart';
import 'package:last_test/pages/Mine/index.dart';

/// 主页面 —— 底部导航框架页
/// 使用 IndexedStack 保持四个子页面的状态，切换 tab 不会重建页面
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  /// 当前选中的底部导航索引
  int _currentIndex = 0;

  // 缓存子页面列表，避免每次 build 重建导致 Element 树重组失败
  final List<Widget> _children = const [HomeView(), CategoryView(), CartView(), MineView()];

  // 缓存底部导航项列表，避免每次 build 重建
  final List<BottomNavigationBarItem> _tabBarItems = [
    BottomNavigationBarItem(
      icon: Image.asset("lib/assets/sy1.png", width: 30, height: 30),
      activeIcon: Image.asset("lib/assets/sy2.png", width: 30, height: 30),
      label: "首页",
    ),
    BottomNavigationBarItem(
      icon: Image.asset("lib/assets/fl1.png", width: 30, height: 30),
      activeIcon: Image.asset("lib/assets/fl2.png", width: 30, height: 30),
      label: "分类",
    ),
    BottomNavigationBarItem(
      icon: Image.asset("lib/assets/gwc1.png", width: 30, height: 30),
      activeIcon: Image.asset("lib/assets/gwc2.png", width: 30, height: 30),
      label: "购物车",
    ),
    BottomNavigationBarItem(
      icon: Image.asset("lib/assets/wd1.png", width: 30, height: 30),
      activeIcon: Image.asset("lib/assets/wd2.png", width: 30, height: 30),
      label: "我的",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // IndexedStack 只显示 index 对应的子页面，其余页面保持隐藏但状态不丢失
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: _children,
        )),
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        // 未选中时也显示 label
        showUnselectedLabels: true,
        // 选中与未选中项的文字颜色均为黑色
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        // 点击切换 tab
        onTap: (int index){
         _currentIndex = index;
         setState(() {});
        },
        // 当前选中索引
        currentIndex: _currentIndex,
        items: _tabBarItems,
        ),
    );
  }
}