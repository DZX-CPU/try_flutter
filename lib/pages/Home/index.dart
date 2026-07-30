import 'package:flutter/material.dart';
import 'package:last_test/components/Home/HmCategory.dart';
import 'package:last_test/components/Home/HmHot.dart';
import 'package:last_test/components/Home/HmMoreList.dart';
import 'package:last_test/components/Home/HmSlider.dart';
import 'package:last_test/components/Home/HmSuggestion.dart';
import 'package:last_test/viewmodels/home.dart';

/// 首页视图 —— 使用 CustomScrollView 实现可滚动布局
/// 由轮播图、分类列表、推荐区等模块组成
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

final List<BannerItem>_bannerList = [
  BannerItem(
    id:"1",
    imgUrl:"https://picsum.photos/800/400?random=1",
  ),
  BannerItem(
    id:"2",
    imgUrl:"https://picsum.photos/800/400?random=2",
  ),
  BannerItem(
    id:"3",
    imgUrl:"https://picsum.photos/800/400?random=3",
  ),
];

  // 缓存 sliver 列表，避免每次 build 重建导致 Element 树重组失败
  List<Widget> get _scrollChildren => [
    SliverToBoxAdapter(child: Hmslider(bannerList:_bannerList)),       // 顶部轮播图
    const SliverToBoxAdapter(child: SizedBox(height: 10)), // 间距
    const SliverToBoxAdapter(child: Hmcategory()),     // 横向分类列表
    const SliverToBoxAdapter(child: SizedBox(height: 10)), // 间距
    const SliverToBoxAdapter(
      child:Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child: Hmsuggestion()
      ),
      ),   // 推荐区域
    const SliverToBoxAdapter(child: SizedBox(height: 10)), // 间距
    const SliverToBoxAdapter(
      child:Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child: Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(child: Hmhot()),
        SizedBox(width: 10),
        Expanded(child: Hmhot()),
      ],
      )
      )
      ),
    const SliverToBoxAdapter(child: SizedBox(height: 10)), // 间距
    const SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      sliver: Hmmorelist(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // CustomScrollView 通过 slivers 组合各个模块，实现统一滚动
    return CustomScrollView(slivers: _scrollChildren);
  }
}