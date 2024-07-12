import 'dart:developer';
import '../../../../core/networking/api_service.dart';
import '../models/products_response_model.dart';

class ProductsRepo {
  final ApiService _apiService;

  ProductsRepo(this._apiService);

  Future<ProductsResponseModel> getProducts() async {
    try {
      final response = await _apiService.getProducts();
      return response;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
