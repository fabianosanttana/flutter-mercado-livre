import '../repositories/product_repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/product_model.dart';

class ProductsBloc {
  final _repository = ProductRepository();
  final _productsFetcher = PublishSubject<List<Product>>();

  Observable<List<Product>> get allProducts => _productsFetcher.stream;

  fetchAllProducts() async {
    List<Product> itemModel = await _repository.fetchAllProducts();
    _productsFetcher.sink.add(itemModel);
  }

  dispose() {
    _productsFetcher.close();
  }
}

final bloc = ProductsBloc();