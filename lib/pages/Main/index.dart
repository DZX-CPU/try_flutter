import 'package:flutter/material.dart';
import 'package:last_test/pages/Cart/index.dart';
import 'package:last_test/pages/Category/index.dart';
import 'package:last_test/pages/Home/index.dart';
import 'package:last_test/pages/Mine/index.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 final List<Map<String,String>> _tabList = [{
  "icon":"lib/assets/sy1.png",
  "active_icon":"lib/assets/sy2.png",
  "text":"首页",
 },
 {
  "icon":"lib/assets/fl1.png",
  "active_icon":"lib/assets/fl2.png",
  "text":"分类",
 },
 {
  "icon":"lib/assets/gwc1.png",
  "active_icon":"lib/assets/gwc2.png",
  "text":"购物车",
 },
 {
  "icon":"lib/assets/wd1.png",
  "active_icon":"lib/assets/wd2.png",
  "text":"我的",
 },
 ];
 int _currentIndex = 0;

 List<BottomNavigationBarItem> _getTabBarWidget(){
  return List.generate(_tabList.length,(int index){
    return BottomNavigationBarItem(
      icon:Image.asset(_tabList[index]["icon"]!,width: 30,height: 30),
      activeIcon:Image.asset(_tabList[index]["active_icon"]!,width: 30,height: 30),
      label: _tabList[index]["text"],
    );
  });
 }


List<Widget> _getChildren(){
   return[HomeView(),CategoryView(),CartView(),MineView()];
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: _getChildren(),
        )),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (int index){
         _currentIndex = index;
         setState(() {});
        },
        currentIndex: _currentIndex,
        items: _getTabBarWidget(),
        ),
    );
  }
}