import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../shared/dio/dio_error_handler.dart';
import '../../../shared/repositories/products/products_client.provider.dart';
import '../models/product.dart';

part 'product.provider.g.dart';

@riverpod
Future<Product> productById(ProductByIdRef ref, {required String id}) async {
  final productsClient = ref.watch(
    productsClientProvider(
      onError: (e, handler) => DioErrorHandler.handleErrorMessage(e),
    ),
  );
  final product = await productsClient.getProduct(id: id);
  return product;
}