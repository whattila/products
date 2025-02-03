import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_header.freezed.dart';
part 'product_header.g.dart';

@freezed
class ProductHeader with _$ProductHeader {
  const factory ProductHeader({
    @JsonKey(name: "id") required String id,
    required String name,
    required int price,
    required int percent,
    required int left
  }) = _ProductHeader;

  factory ProductHeader.fromJson(Map<String, Object?> json)
    => _$ProductHeaderFromJson(json);
}