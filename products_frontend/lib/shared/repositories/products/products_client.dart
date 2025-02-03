import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../features/product_details/models/product.dart';
import '../../../features/product_list/models/product_list_response.dart';

part 'products_client.g.dart';

@RestApi(baseUrl: 'http://10.0.2.2:3000')
abstract class ProductsClient {
  factory ProductsClient(Dio dio, {String? baseUrl}) = _ProductsClient;

  @GET('/products')
  Future<ProductListResponse> getAllProducts({@Queries() required Map<String, dynamic> paginationDto});

  @GET('/products/{id}')
  Future<Product> getProduct({@Path() required String id});
}