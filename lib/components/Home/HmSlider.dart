import 'package:flutter/material.dart';

/// 首页顶部轮播图组件（占位，待实现）
class Hmslider extends StatefulWidget {
  const Hmslider({super.key});

  @override
  State<Hmslider> createState() => _HmsliderState();
}

class _HmsliderState extends State<Hmslider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
      "轮播图",
      style: TextStyle(
      color: Colors.white,
      fontSize: 20)));
  }
}