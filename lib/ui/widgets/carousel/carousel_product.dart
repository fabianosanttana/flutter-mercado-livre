import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselProductDetail extends StatelessWidget {
  final List<dynamic> images;
  CarouselProductDetail(this.images);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      child: Stack(children: [
        Carousel(
          boxFit: BoxFit.fill,
          images: images.map((f) => NetworkImage(f)).toList(),
          autoplay: false,
          showIndicator: false,
        ),
        Positioned(
          height: 20,
          width: 50,
          bottom: 15,
          left: 15,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
              alignment: Alignment.center,
              child: Text(
                '${images.length} Fotos',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.white),
                textAlign: TextAlign.center,
              )),
        ),
      ]),
    );
  }
}
