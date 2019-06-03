import 'package:flutter/material.dart';
import 'package:mercado_livre/resources/blocs/product_detail_bloc.dart';
export 'package:mercado_livre/resources/blocs/product_detail_bloc.dart';

class ProductDetailBlocProvider extends InheritedWidget {
  final ProductDetailBloc bloc;

  ProductDetailBlocProvider({Key key, Widget child})
      : bloc = ProductDetailBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(_) {
    return true;
  }

  static ProductDetailBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(ProductDetailBlocProvider)
            as ProductDetailBlocProvider)
        .bloc;
  }
}