import 'package:flutter/material.dart';

/// 首页横向分类列表组件
class Hmcategory extends StatefulWidget {
  const Hmcategory({super.key});

  @override
  State<Hmcategory> createState() => HmcategoryState();
}

class HmcategoryState extends State<Hmcategory> {
  // 缓存分类子项列表，避免每次 build 重建导致 Element 树重组失败
  final List<Widget> _categoryItems = List.generate(20, (index) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 100,
      color: Colors.blue,
      // 左右间距
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "分类$index",
        style: TextStyle(color: Colors.white),
      ),
    );
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // 限制分类区域高度
      height: 100,
      child: SingleChildScrollView(
        // 横向滚动（使用 SingleChildScrollView 而非 ListView，
        // 避免与外层 CustomScrollView 产生嵌套滚动冲突）
        scrollDirection: Axis.horizontal,
        child: Row(children: _categoryItems),
      ),
    );
  }
}
