import 'dart:async';
import 'package:mercado_livre/resources/models/product_model.dart';
import 'package:mercado_livre/resources/repositories/api_provider.dart';

class ProductRepository {
  final apiProvider = ApiProvider();

  Future<List<Product>> fetchAllProducts() => apiProvider.fetchProductsList();
}