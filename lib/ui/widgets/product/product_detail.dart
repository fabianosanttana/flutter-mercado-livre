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
                'por FABIANO SANTANA',
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
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          title: Text(
            '12x R\$ 21.46 sem juros',
            style: CustomThemes.priceDescount.copyWith(fontSize: 16),
          ),
          subtitle: Text(
            'Com seu cartão final 0099',
            style: CustomThemes.titleProduct.copyWith(fontSize: 16),
          ),
          leading: CircleAvatar(
            child: Icon(
              Icons.credit_card,
              color: CustomColors.greenDiscount,
              size: 20,
            ),
            backgroundColor: Colors.white,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: CustomColors.grayTitle[50],
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Divider(color: CustomColors.grayTitle[50], height: 1),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          title: Text(
            'Frete grátis',
            style: CustomThemes.priceDescount.copyWith(fontSize: 16),
          ),
          subtitle: Text(
            'Chegará entre os dias 6 a 10 de bla bla\nBenefício Mercado Pontos',
            style: CustomThemes.titleProduct.copyWith(fontSize: 16),
          ),
          leading: CircleAvatar(
            child: Icon(
              Icons.directions_car,
              color: CustomColors.greenDiscount,
              size: 20,
            ),
            backgroundColor: Colors.white,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: CustomColors.grayTitle[50],
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Divider(color: CustomColors.grayTitle[50], height: 1),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          title: Text(
            'Devolução agilizada',
            style: CustomThemes.priceDescount.copyWith(fontSize: 16),
          ),
          subtitle: Text(
            'Se você não gostar, só devolver\n:)',
            style: CustomThemes.titleProduct.copyWith(fontSize: 16),
          ),
          leading: CircleAvatar(
            child: Icon(
              Icons.subdirectory_arrow_left,
              color: CustomColors.greenDiscount,
              size: 20,
            ),
            backgroundColor: Colors.white,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: CustomColors.grayTitle[50],
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
