import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/product_header.dart';

part 'product_list.provider.g.dart';

@riverpod
class ProductList extends _$ProductList {
  @override
  Future<List<ProductHeader>> build() async {
    // TODO???
  }

}