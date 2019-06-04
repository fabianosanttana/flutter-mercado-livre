import 'package:flutter/material.dart';
import 'package:mercado_livre/config/appbar.dart';
import 'package:mercado_livre/resources/models/product_detail_model.dart';
import 'package:mercado_livre/resources/models/product_model.dart';
import 'package:mercado_livre/ui/widgets/appbar/silver_app_bar.dart';
import 'package:mercado_livre/ui/widgets/product/product_detail.dart';
import 'package:mercado_livre/resources/blocs/product_bloc.dart';

class ProductContainer extends StatefulWidget {
  final Product _product;

  ProductContainer(this._product) : assert(_product != null);

  @override
  State<StatefulWidget> createState() {
    return ProductContainerState(product: _product);
  }
}

class ProductContainerState extends State<ProductContainer> {
  final Product product;
  final _bloc = ProductsBloc();

  ProductContainerState({this.product});

  @override
  void didChangeDependencies() {
    _bloc.fetchProductById(product.id);
    print("recreated");
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CustomSliverAppBar(
                  title: product.title,
                  actions: EnumAppBar.product,
                  context: context)
            ];
          },
          body: StreamBuilder(
              stream: _bloc.product,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ProductDetailLayout(productDetail: snapshot.data);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              })),
    );
  }
}
