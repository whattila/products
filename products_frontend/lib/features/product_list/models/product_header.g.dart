// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductHeaderImpl _$$ProductHeaderImplFromJson(Map<String, dynamic> json) =>
    _$ProductHeaderImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      percent: (json['percent'] as num).toInt(),
      left: (json['left'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductHeaderImplToJson(_$ProductHeaderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'percent': instance.percent,
      'left': instance.left,
    };
