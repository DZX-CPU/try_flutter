import 'package:flutter/material.dart';

/// 首页更多列表组件（占位，待实现）
class Hmmorelist extends StatefulWidget {
  const Hmmorelist({super.key});

  @override
  State<Hmmorelist> createState() => _HmmorelistState();
}

class _HmmorelistState extends State<Hmmorelist> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10),
      itemBuilder:(BuildContext context,int index){
        return Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text(
            "商品",
            style: TextStyle(color: Colors.white),),
        );
      });
  }
}