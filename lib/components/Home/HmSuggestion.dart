import 'package:flutter/material.dart';

/// 首页推荐区域组件（占位，待实现）
class Hmsuggestion extends StatefulWidget {
  const Hmsuggestion({super.key});

  @override
  State<Hmsuggestion> createState() => _HmsuggestionState();
}

class _HmsuggestionState extends State<Hmsuggestion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue,
      height: 250,
      child: Text(
      "推荐",
      style: TextStyle(color: Colors.white)),
    );
  }
}