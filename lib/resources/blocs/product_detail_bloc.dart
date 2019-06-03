import 'dart:async';

import 'package:mercado_livre/resources/models/product_detail_model.dart';
import 'package:mercado_livre/resources/repositories/product_repository.dart';
import 'package:rxdart/rxdart.dart';

class ProductDetailBloc {
  final _repository = ProductRepository();
  final _productId = PublishSubject<int>();
  final _productDetail = BehaviorSubject<Future<ProductDetail>>();

  Function(int) get fetchProductById => _productId.sink.add;
  Observable<Future<ProductDetail>> get productDetail => _productDetail.stream;

  ProductDetailBloc() {
    _productId.stream.transform(_itemTransformer()).pipe(_productDetail);
  }

  dispose() async {
    _productId.close();
    await _productDetail.drain();
    _productDetail.close();
  }

  _itemTransformer() {
    return ScanStreamTransformer(
      (Future<ProductDetail> product, int id, int index) {
        print(index);
        product = _repository.fetchProduct(id);
        return product;
      },
    );
  }
}