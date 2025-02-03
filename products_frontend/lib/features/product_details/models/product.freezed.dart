// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get percent => throw _privateConstructorUsedError;
  int get left => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get frontImageUri => throw _privateConstructorUsedError;
  List<String> get otherImageUris => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      String name,
      int price,
      int percent,
      int left,
      String description,
      String frontImageUri,
      List<String> otherImageUris});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? percent = null,
    Object? left = null,
    Object? description = null,
    Object? frontImageUri = null,
    Object? otherImageUris = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      frontImageUri: null == frontImageUri
          ? _value.frontImageUri
          : frontImageUri // ignore: cast_nullable_to_non_nullable
              as String,
      otherImageUris: null == otherImageUris
          ? _value.otherImageUris
          : otherImageUris // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      String name,
      int price,
      int percent,
      int left,
      String description,
      String frontImageUri,
      List<String> otherImageUris});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? percent = null,
    Object? left = null,
    Object? description = null,
    Object? frontImageUri = null,
    Object? otherImageUris = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      frontImageUri: null == frontImageUri
          ? _value.frontImageUri
          : frontImageUri // ignore: cast_nullable_to_non_nullable
              as String,
      otherImageUris: null == otherImageUris
          ? _value._otherImageUris
          : otherImageUris // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {@JsonKey(name: "id") required this.id,
      required this.name,
      required this.price,
      required this.percent,
      required this.left,
      required this.description,
      required this.frontImageUri,
      required final List<String> otherImageUris})
      : _otherImageUris = otherImageUris;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  final String name;
  @override
  final int price;
  @override
  final int percent;
  @override
  final int left;
  @override
  final String description;
  @override
  final String frontImageUri;
  final List<String> _otherImageUris;
  @override
  List<String> get otherImageUris {
    if (_otherImageUris is EqualUnmodifiableListView) return _otherImageUris;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherImageUris);
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, percent: $percent, left: $left, description: $description, frontImageUri: $frontImageUri, otherImageUris: $otherImageUris)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.frontImageUri, frontImageUri) ||
                other.frontImageUri == frontImageUri) &&
            const DeepCollectionEquality()
                .equals(other._otherImageUris, _otherImageUris));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      percent,
      left,
      description,
      frontImageUri,
      const DeepCollectionEquality().hash(_otherImageUris));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: "id") required final String id,
      required final String name,
      required final int price,
      required final int percent,
      required final int left,
      required final String description,
      required final String frontImageUri,
      required final List<String> otherImageUris}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  String get name;
  @override
  int get price;
  @override
  int get percent;
  @override
  int get left;
  @override
  String get description;
  @override
  String get frontImageUri;
  @override
  List<String> get otherImageUris;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
