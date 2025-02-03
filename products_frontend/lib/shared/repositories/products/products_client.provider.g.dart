// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_client.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsClientHash() => r'41b51ce77fe53e6398a892cdebe274ec08b4d78e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [productsClient].
@ProviderFor(productsClient)
const productsClientProvider = ProductsClientFamily();

/// See also [productsClient].
class ProductsClientFamily extends Family<ProductsClient> {
  /// See also [productsClient].
  const ProductsClientFamily();

  /// See also [productsClient].
  ProductsClientProvider call({
    void Function(DioException, ErrorInterceptorHandler)? onError,
  }) {
    return ProductsClientProvider(
      onError: onError,
    );
  }

  @override
  ProductsClientProvider getProviderOverride(
    covariant ProductsClientProvider provider,
  ) {
    return call(
      onError: provider.onError,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productsClientProvider';
}

/// See also [productsClient].
class ProductsClientProvider extends AutoDisposeProvider<ProductsClient> {
  /// See also [productsClient].
  ProductsClientProvider({
    void Function(DioException, ErrorInterceptorHandler)? onError,
  }) : this._internal(
          (ref) => productsClient(
            ref as ProductsClientRef,
            onError: onError,
          ),
          from: productsClientProvider,
          name: r'productsClientProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productsClientHash,
          dependencies: ProductsClientFamily._dependencies,
          allTransitiveDependencies:
              ProductsClientFamily._allTransitiveDependencies,
          onError: onError,
        );

  ProductsClientProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.onError,
  }) : super.internal();

  final void Function(DioException, ErrorInterceptorHandler)? onError;

  @override
  Override overrideWith(
    ProductsClient Function(ProductsClientRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductsClientProvider._internal(
        (ref) => create(ref as ProductsClientRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        onError: onError,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ProductsClient> createElement() {
    return _ProductsClientProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsClientProvider && other.onError == onError;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, onError.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductsClientRef on AutoDisposeProviderRef<ProductsClient> {
  /// The parameter `onError` of this provider.
  void Function(DioException, ErrorInterceptorHandler)? get onError;
}

class _ProductsClientProviderElement
    extends AutoDisposeProviderElement<ProductsClient> with ProductsClientRef {
  _ProductsClientProviderElement(super.provider);

  @override
  void Function(DioException, ErrorInterceptorHandler)? get onError =>
      (origin as ProductsClientProvider).onError;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
