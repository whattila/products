// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductHeader _$ProductHeaderFromJson(Map<String, dynamic> json) {
  return _ProductHeader.fromJson(json);
}

/// @nodoc
mixin _$ProductHeader {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get percent => throw _privateConstructorUsedError;
  int get left => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductHeaderCopyWith<ProductHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductHeaderCopyWith<$Res> {
  factory $ProductHeaderCopyWith(
          ProductHeader value, $Res Function(ProductHeader) then) =
      _$ProductHeaderCopyWithImpl<$Res, ProductHeader>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      String name,
      int price,
      int percent,
      int left});
}

/// @nodoc
class _$ProductHeaderCopyWithImpl<$Res, $Val extends ProductHeader>
    implements $ProductHeaderCopyWith<$Res> {
  _$ProductHeaderCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductHeaderImplCopyWith<$Res>
    implements $ProductHeaderCopyWith<$Res> {
  factory _$$ProductHeaderImplCopyWith(
          _$ProductHeaderImpl value, $Res Function(_$ProductHeaderImpl) then) =
      __$$ProductHeaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      String name,
      int price,
      int percent,
      int left});
}

/// @nodoc
class __$$ProductHeaderImplCopyWithImpl<$Res>
    extends _$ProductHeaderCopyWithImpl<$Res, _$ProductHeaderImpl>
    implements _$$ProductHeaderImplCopyWith<$Res> {
  __$$ProductHeaderImplCopyWithImpl(
      _$ProductHeaderImpl _value, $Res Function(_$ProductHeaderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? percent = null,
    Object? left = null,
  }) {
    return _then(_$ProductHeaderImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductHeaderImpl implements _ProductHeader {
  const _$ProductHeaderImpl(
      {@JsonKey(name: "id") required this.id,
      required this.name,
      required this.price,
      required this.percent,
      required this.left});

  factory _$ProductHeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductHeaderImplFromJson(json);

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
  String toString() {
    return 'ProductHeader(id: $id, name: $name, price: $price, percent: $percent, left: $left)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductHeaderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.left, left) || other.left == left));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, percent, left);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductHeaderImplCopyWith<_$ProductHeaderImpl> get copyWith =>
      __$$ProductHeaderImplCopyWithImpl<_$ProductHeaderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductHeaderImplToJson(
      this,
    );
  }
}

abstract class _ProductHeader implements ProductHeader {
  const factory _ProductHeader(
      {@JsonKey(name: "id") required final String id,
      required final String name,
      required final int price,
      required final int percent,
      required final int left}) = _$ProductHeaderImpl;

  factory _ProductHeader.fromJson(Map<String, dynamic> json) =
      _$ProductHeaderImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$ProductHeaderImplCopyWith<_$ProductHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
