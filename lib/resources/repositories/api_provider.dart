import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' show Client;
import '../models/product_model.dart';

class ApiProvider {
  Client client = Client();
  final _baseUrl = "https://5cf1942e259b9500143d5910.mockapi.io";

  Future<List<Product>> fetchProductsList() async {
    final response = await client.get("$_baseUrl/products");
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List).map((data) => new Product.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load post');
    }
  }

  // Future<TrailerModel> fetchTrailer(int movieId) async {
  //   final response =
  //       await client.get("$_baseUrl/$movieId/videos?api_key=$_apiKey");

  //   if (response.statusCode == 200) {
  //     return TrailerModel.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to load trailers');
  //   }
  // }
}