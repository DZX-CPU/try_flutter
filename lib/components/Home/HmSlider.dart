import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:last_test/viewmodels/home.dart';

/// 首页顶部轮播图组件（占位，待实现）
class Hmslider extends StatefulWidget {
  final List<BannerItem> bannerList;
  Hmslider({Key? key, required this.bannerList}):super(key: key);

  @override
  State<Hmslider> createState() => _HmsliderState();
}

class _HmsliderState extends State<Hmslider> {

Widget _getSlider(){
  final double screenWidth = MediaQuery.of(context).size.width;
  return CarouselSlider(items: List.generate(widget.bannerList.length,
  (int index){
    return Image.network(widget.bannerList[index].imgUrl,
    fit: BoxFit.cover,
    width: screenWidth,
    );
  }),
    options: CarouselOptions(
    autoPlayInterval: Duration(seconds: 2),
    height: 250,
    viewportFraction: 1,
    autoPlay: true,
  ));
}

  @override
  Widget build(BuildContext context) {

       return Stack(
        children: [_getSlider()],
       );

    // return Container(
    //   height: 250,
    //   color: Colors.blue,
    //   alignment: Alignment.center,
    //   child: Text(
    //   "轮播图",
    //   style: TextStyle(
    //   color: Colors.white,
    //   fontSize: 20)));
  }
}