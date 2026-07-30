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
  CarouselSliderController _controller =CarouselSliderController();
  int _currentIndex = 0;
Widget _getSlider(){
  final double screenWidth = MediaQuery.of(context).size.width;
  return CarouselSlider(
    carouselController: _controller,
    items: List.generate(widget.bannerList.length,
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
    onPageChanged: (int index,reason){
      _currentIndex = index;
      setState(() {});
    }
  ));
}

Widget _getSearch(){
  return Positioned(
    top: 10,
    left: 0,
    right: 0,
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 40),
        height: 40,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0,0,0,0.4),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          "搜索...",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16
          ),
        ),
      ),),
  );
}


Widget _getDots (){
  return Positioned(
    left: 0,
    right: 0,
    bottom: 10,
    child:SizedBox(
      height: 30,
      width: double.infinity,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.bannerList.length, (int index){
        return GestureDetector(
          onTap:(){
            _controller.jumpToPage(index);
          } ,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
          height: 6,
          width: index == _currentIndex ? 40 : 20,
          margin: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color:index == _currentIndex ? Colors.white :Color.fromRGBO(0,0,0,0.3),
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        );
      }
      ))));
}

  @override
  Widget build(BuildContext context) {

       return Stack(
        children: [_getSlider(),_getSearch(),_getDots()],
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