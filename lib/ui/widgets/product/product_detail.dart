import 'package:flutter/material.dart';
import 'package:mercado_livre/resources/models/product_detail_model.dart';
import 'package:mercado_livre/theme/colors.dart';
import 'package:mercado_livre/theme/theme.dart';
import 'package:mercado_livre/ui/widgets/carousel/carousel_product.dart';

class ProductDetailLayout extends StatelessWidget {
  final ProductDetail productDetail;
  ProductDetailLayout({this.productDetail});
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(0),
      children: <Widget>[
        CarouselProductDetail(productDetail.images),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '32 vendidos',
                style: TextStyle(
                    fontSize: 15,
                    color: CustomColors.grayTitle[50],
                    fontWeight: FontWeight.w900),
              ),
              Text(
                productDetail.title,
                style: CustomThemes.productDetailTitle,
              ),
              Text(
                'por MERCADO LIVRE',
                style: TextStyle(
                    fontSize: 12,
                    color: CustomColors.grayTitle[50],
                    fontWeight: FontWeight.w900),
              ),
              Text('R\$ ${productDetail.oldPrice}',
                  style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.lineThrough,
                      color: CustomColors.grayTitle[150],
                      fontWeight: FontWeight.w900)),
              Row(
                children: <Widget>[
                  Text('R\$ ${productDetail.price} ',
                      style: CustomThemes.productDetailTitle),
                  Icon(
                    Icons.turned_in_not,
                    color: CustomColors.greenDiscount,
                    size: 20,
                  ),
                  Text('8% OFF',
                      style: TextStyle(
                        color: CustomColors.greenDiscount,
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
