import 'package:mercado_livre/resources/models/product_detail_model.dart';

import '../repositories/product_repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/product_model.dart';

class ProductsBloc {
  final _repository = ProductRepository();
  final _productsFetcher = PublishSubject<List<Product>>();
  final _productFetcher = PublishSubject<ProductDetail>();

  Observable<List<Product>> get allProducts => _productsFetcher.stream;
  Observable<ProductDetail> get product => _productFetcher.stream;
  
  fetchAllProducts() async {
    List<Product> itemModel = await _repository.fetchAllProducts();
    _productsFetcher.sink.add(itemModel);
  }

  fetchProductById(int id) async {
  ProductDetail itemModel = await _repository.fetchProduct(id);
    _productFetcher.sink.add(itemModel);
  }

  dispose() {
    _productsFetcher.close();
    _productFetcher.close();
  }
}

final bloc = ProductsBloc();