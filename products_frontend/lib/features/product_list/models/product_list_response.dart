import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_frontend/features/product_list/models/product_header.dart';

part 'product_list_response.header.freezed.dart';
part 'product_list_response.g.dart';

@freezed
class ProductListResponse with _$ProductListResponse {
  const factory ProductListResponse({
    required List<ProductHeader> data,
    required int? nextPage
  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, Object?> json)
  => _$ProductListResponseFromJson(json);
}