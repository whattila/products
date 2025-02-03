import 'package:dio/dio.dart';
import 'package:products_frontend/shared/repositories/products/products_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products_client.provider.g.dart';

@riverpod
ProductsClient productsClient(
    ProductsClientRef ref, {
      void Function(DioError, ErrorInterceptorHandler)? onError,
    }) {
  final dio = ref.watch(dioProvider(onError: onError));
  return ProductsClient(dio);
}