import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../features/product_list/models/product_list_response.dart';

part 'products_client.g.dart';

@RestApi(baseUrl: 'http://127.0.0.1:3000')
abstract class ProductsClient {
  factory ProductsClient(Dio dio, {String? baseUrl}) = _ProductsClient;

  @GET('/products')
  Future<ProductListResponse> getAllProducts({@Queries() Map<String, dynamic> paginationDto});

  @GET('/products/{id}')
  Future<Product> getProduct({@Path() required String id});
}