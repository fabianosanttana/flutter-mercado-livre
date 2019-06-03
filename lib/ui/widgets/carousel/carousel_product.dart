import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselProductDetail extends StatefulWidget {
  @override
  _CarouselProductDetailState createState() => _CarouselProductDetailState();
}

class _CarouselProductDetailState extends State<CarouselProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      child: new Carousel(
        boxFit: BoxFit.fitHeight,
        images: [
          AssetImage('assets/images/banner_1.jpg'),
          AssetImage('assets/images/banner_2.jpg'),
          AssetImage('assets/images/banner_3.jpg'),
          AssetImage('assets/images/banner_4.jpg'),
        ],
        autoplay: false,
        dotSize: 4.5,
        dotSpacing: 10,
        dotColor: Colors.white70,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 10.0,
      ),
    );
  }
}
