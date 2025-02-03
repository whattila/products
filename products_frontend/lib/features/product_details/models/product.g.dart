// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      percent: (json['percent'] as num).toInt(),
      left: (json['left'] as num).toInt(),
      description: json['description'] as String,
      frontImageUri: json['frontImageUri'] as String,
      otherImageUris: (json['otherImageUris'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'percent': instance.percent,
      'left': instance.left,
      'description': instance.description,
      'frontImageUri': instance.frontImageUri,
      'otherImageUris': instance.otherImageUris,
    };
