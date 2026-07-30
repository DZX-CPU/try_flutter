import 'package:flutter/material.dart';

/// 首页热门区域组件（占位，待实现）
class Hmhot extends StatefulWidget {
  const Hmhot({super.key});

  @override
  State<Hmhot> createState() => _HmhotState();
}

class _HmhotState extends State<Hmhot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        "爆款推荐",
        style: TextStyle(color: Colors.white),),
    );
  }
}