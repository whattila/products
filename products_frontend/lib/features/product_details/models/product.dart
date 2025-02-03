import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "id") required String id,
    required String name,
    required int price,
    required int percent,
    required int left,
    required String description,
    required String frontImageUri,
    required List<String> otherImageUris
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json)
  => _$ProductFromJson(json);
}