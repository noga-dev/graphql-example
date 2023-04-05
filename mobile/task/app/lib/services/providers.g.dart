// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$exchangeRateListHash() => r'9d144e9e185a7f0181e688c02883391fe2799d2f';

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

typedef ExchangeRateListRef
    = AutoDisposeFutureProviderRef<ExchangeRateListModel>;

/// See also [exchangeRateList].
@ProviderFor(exchangeRateList)
const exchangeRateListProvider = ExchangeRateListFamily();

/// See also [exchangeRateList].
class ExchangeRateListFamily extends Family<AsyncValue<ExchangeRateListModel>> {
  /// See also [exchangeRateList].
  const ExchangeRateListFamily();

  /// See also [exchangeRateList].
  ExchangeRateListProvider call({
    dynamic historyLength = 99,
  }) {
    return ExchangeRateListProvider(
      historyLength: historyLength,
    );
  }

  @override
  ExchangeRateListProvider getProviderOverride(
    covariant ExchangeRateListProvider provider,
  ) {
    return call(
      historyLength: provider.historyLength,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    _gQLClientProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>[_gQLClientProvider];

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'exchangeRateListProvider';
}

/// See also [exchangeRateList].
class ExchangeRateListProvider
    extends AutoDisposeFutureProvider<ExchangeRateListModel> {
  /// See also [exchangeRateList].
  ExchangeRateListProvider({
    this.historyLength = 99,
  }) : super.internal(
          (ref) => exchangeRateList(
            ref,
            historyLength: historyLength,
          ),
          from: exchangeRateListProvider,
          name: r'exchangeRateListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$exchangeRateListHash,
          dependencies: ExchangeRateListFamily._dependencies,
          allTransitiveDependencies:
              ExchangeRateListFamily._allTransitiveDependencies,
        );

  final dynamic historyLength;

  @override
  bool operator ==(Object other) {
    return other is ExchangeRateListProvider &&
        other.historyLength == historyLength;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, historyLength.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$exchangeRateItemHash() => r'69843b4ebb7dfa8f185905dc771d13d189d59220';
typedef ExchangeRateItemRef
    = AutoDisposeFutureProviderRef<ExchangeRateItemModel>;

/// See also [exchangeRateItem].
@ProviderFor(exchangeRateItem)
const exchangeRateItemProvider = ExchangeRateItemFamily();

/// See also [exchangeRateItem].
class ExchangeRateItemFamily extends Family<AsyncValue<ExchangeRateItemModel>> {
  /// See also [exchangeRateItem].
  const ExchangeRateItemFamily();

  /// See also [exchangeRateItem].
  ExchangeRateItemProvider call({
    required String code,
    int historyLength = 99,
  }) {
    return ExchangeRateItemProvider(
      code: code,
      historyLength: historyLength,
    );
  }

  @override
  ExchangeRateItemProvider getProviderOverride(
    covariant ExchangeRateItemProvider provider,
  ) {
    return call(
      code: provider.code,
      historyLength: provider.historyLength,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    _gQLClientProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>[_gQLClientProvider];

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'exchangeRateItemProvider';
}

/// See also [exchangeRateItem].
class ExchangeRateItemProvider
    extends AutoDisposeFutureProvider<ExchangeRateItemModel> {
  /// See also [exchangeRateItem].
  ExchangeRateItemProvider({
    required this.code,
    this.historyLength = 99,
  }) : super.internal(
          (ref) => exchangeRateItem(
            ref,
            code: code,
            historyLength: historyLength,
          ),
          from: exchangeRateItemProvider,
          name: r'exchangeRateItemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$exchangeRateItemHash,
          dependencies: ExchangeRateItemFamily._dependencies,
          allTransitiveDependencies:
              ExchangeRateItemFamily._allTransitiveDependencies,
        );

  final String code;
  final int historyLength;

  @override
  bool operator ==(Object other) {
    return other is ExchangeRateItemProvider &&
        other.code == code &&
        other.historyLength == historyLength;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, code.hashCode);
    hash = _SystemHash.combine(hash, historyLength.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$gQLClientHash() => r'2761f4f02e49b4acfbb61b364e4a881a98f9fe8e';

/// See also [_GQLClient].
@ProviderFor(_GQLClient)
final _gQLClientProvider =
    AutoDisposeNotifierProvider<_GQLClient, GraphQLClient>.internal(
  _GQLClient.new,
  name: r'_gQLClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gQLClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GQLClient = AutoDisposeNotifier<GraphQLClient>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
