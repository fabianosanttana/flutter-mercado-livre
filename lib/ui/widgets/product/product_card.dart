import 'package:flutter/material.dart';
import 'package:mercado_livre/resources/models/product_model.dart';
import 'package:mercado_livre/routes/navigation.dart';
import 'package:mercado_livre/theme/theme.dart';


class ProductCard extends StatelessWidget {
  final Product product;
  ProductCard(this.product);
  @override
  Widget build(BuildContext context) {
    final _fractionDecimal = product.price.split('.');
    return Card(
      key: ObjectKey(product.id),
      semanticContainer: false,
      child: InkWell(
        onTap: () => CustomNavigation.pushNavigation(context, '/product',
            arguments: product),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/placeholder-portrait.png',
              image: product.image,
              fit: BoxFit.fill,
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text('12x R\$ ', style: CustomThemes.price),
                          Text('${_fractionDecimal[0]}',
                              style: CustomThemes.price),
                          if (product.discount)
                            Text(' ${product.discountQuantity}% OFF',
                                style: CustomThemes.priceDescount),
                        ],
                      ),
                      Text('sem juros',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                      SizedBox(
                        height: 10,
                      ),
                      Text(product.title,
                          style: CustomThemes.titleProduct),
                    ]))
          ],
        ),
      ),
    );
  }
}
