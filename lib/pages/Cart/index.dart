import 'package:flutter/material.dart';

/// 购物车页（占位，待实现）
class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("购物车"),
    );
  }
}