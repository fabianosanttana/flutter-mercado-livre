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
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
              color: Colors.black38,
              size: 14,
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Divider(color: CustomColors.grayTitle[50], height: 1),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
              color: Colors.black38,
              size: 14,
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Divider(color: CustomColors.grayTitle[50], height: 1),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
        ),
        Container(
          height: 50,
          padding: EdgeInsets.only(left: 10),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 11,
                child: RichText(
                  text: TextSpan(
                    text: 'Quantidade: ',
                    style: TextStyle(
                        fontSize: 12,
                        color: CustomColors.grayTitle[100],
                        fontFamily: 'Zeitung Pro',
                        fontWeight: FontWeight.w900),
                    children: <TextSpan>[
                      TextSpan(
                          text: '12',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Zeitung Pro',
                              color: CustomColors.grayTitle[50],
                              fontWeight: FontWeight.w900))
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black38,
                    size: 14,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0)),
            padding: EdgeInsets.all(12),
            onPressed: () {},
            color: Colors.blue,
            child: Text('Comprar',
                style: CustomThemes.productDetailTitle
                    .copyWith(color: Colors.white, fontSize: 18)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: OutlineButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0)),
            padding: EdgeInsets.all(12),
            onPressed: () {},
            borderSide: BorderSide(color: Colors.blue),
            child: Text('Adicionar ao carrinho',
                style: CustomThemes.productDetailTitle
                    .copyWith(color: Colors.blue, fontSize: 18)),
          ),
        ),
        SizedBox(
          height: 80,
          child: Container(),
        ),
      ],
    );
  }
}
