import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'api_constants.dart';
import '../../featuers/home/data/models/products_response_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.productsEP)
  Future<ProductsResponseModel> getProducts(); 
}
