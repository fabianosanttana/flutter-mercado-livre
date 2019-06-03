import 'package:flutter/material.dart';
import 'package:mercado_livre/resources/models/product_model.dart';
import 'package:mercado_livre/routes/navigation.dart';
import 'package:mercado_livre/theme/theme.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  ProductCard(this.product);
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final _fractionDecimal = widget.product.price.split('.');
    return Hero(
      tag: widget.product.id,
      child: Card(
        key: ObjectKey(widget.product.id),
        semanticContainer: false,
        child: InkWell(
          onTap: () => CustomNavigation.pushNavigation(context, '/product',
              arguments: widget.product),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/placeholder-portrait.png',
                image: widget.product.image,
                fit: BoxFit.fill,
              ),
              //Image.network(widget.product.image, fit: BoxFit.cover),
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
                            if (widget.product.discount)
                              Text(' ${widget.product.discountQuantity}% OFF',
                                  style: CustomThemes.priceDescount),
                          ],
                        ),
                        Text('sem juros',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(widget.product.title,
                            style: CustomThemes.titleProduct),
                        //Text(_location),
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
