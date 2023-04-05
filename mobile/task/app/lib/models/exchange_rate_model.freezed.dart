// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_rate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangeRateItemModel _$ExchangeRateItemModelFromJson(
    Map<String, dynamic> json) {
  return _ExchangeRateItemModel.fromJson(json);
}

/// @nodoc
mixin _$ExchangeRateItemModel {
  String get code => throw _privateConstructorUsedError;
  List<double> get rates => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeRateItemModelCopyWith<ExchangeRateItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateItemModelCopyWith<$Res> {
  factory $ExchangeRateItemModelCopyWith(ExchangeRateItemModel value,
          $Res Function(ExchangeRateItemModel) then) =
      _$ExchangeRateItemModelCopyWithImpl<$Res, ExchangeRateItemModel>;
  @useResult
  $Res call({String code, List<double> rates, String description});
}

/// @nodoc
class _$ExchangeRateItemModelCopyWithImpl<$Res,
        $Val extends ExchangeRateItemModel>
    implements $ExchangeRateItemModelCopyWith<$Res> {
  _$ExchangeRateItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? rates = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExchangeRateItemModelCopyWith<$Res>
    implements $ExchangeRateItemModelCopyWith<$Res> {
  factory _$$_ExchangeRateItemModelCopyWith(_$_ExchangeRateItemModel value,
          $Res Function(_$_ExchangeRateItemModel) then) =
      __$$_ExchangeRateItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, List<double> rates, String description});
}

/// @nodoc
class __$$_ExchangeRateItemModelCopyWithImpl<$Res>
    extends _$ExchangeRateItemModelCopyWithImpl<$Res, _$_ExchangeRateItemModel>
    implements _$$_ExchangeRateItemModelCopyWith<$Res> {
  __$$_ExchangeRateItemModelCopyWithImpl(_$_ExchangeRateItemModel _value,
      $Res Function(_$_ExchangeRateItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? rates = null,
    Object? description = null,
  }) {
    return _then(_$_ExchangeRateItemModel(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExchangeRateItemModel implements _ExchangeRateItemModel {
  const _$_ExchangeRateItemModel(
      {this.code = '',
      final List<double> rates = const [],
      this.description = ''})
      : _rates = rates;

  factory _$_ExchangeRateItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangeRateItemModelFromJson(json);

  @override
  @JsonKey()
  final String code;
  final List<double> _rates;
  @override
  @JsonKey()
  List<double> get rates {
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rates);
  }

  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'ExchangeRateItemModel(code: $code, rates: $rates, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeRateItemModel &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._rates, _rates) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code,
      const DeepCollectionEquality().hash(_rates), description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeRateItemModelCopyWith<_$_ExchangeRateItemModel> get copyWith =>
      __$$_ExchangeRateItemModelCopyWithImpl<_$_ExchangeRateItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangeRateItemModelToJson(
      this,
    );
  }
}

abstract class _ExchangeRateItemModel implements ExchangeRateItemModel {
  const factory _ExchangeRateItemModel(
      {final String code,
      final List<double> rates,
      final String description}) = _$_ExchangeRateItemModel;

  factory _ExchangeRateItemModel.fromJson(Map<String, dynamic> json) =
      _$_ExchangeRateItemModel.fromJson;

  @override
  String get code;
  @override
  List<double> get rates;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeRateItemModelCopyWith<_$_ExchangeRateItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ExchangeRateListModel _$ExchangeRateListModelFromJson(
    Map<String, dynamic> json) {
  return _ExchangeRateListModel.fromJson(json);
}

/// @nodoc
mixin _$ExchangeRateListModel {
  List<ExchangeRateItemModel> get exchangeRates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeRateListModelCopyWith<ExchangeRateListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateListModelCopyWith<$Res> {
  factory $ExchangeRateListModelCopyWith(ExchangeRateListModel value,
          $Res Function(ExchangeRateListModel) then) =
      _$ExchangeRateListModelCopyWithImpl<$Res, ExchangeRateListModel>;
  @useResult
  $Res call({List<ExchangeRateItemModel> exchangeRates});
}

/// @nodoc
class _$ExchangeRateListModelCopyWithImpl<$Res,
        $Val extends ExchangeRateListModel>
    implements $ExchangeRateListModelCopyWith<$Res> {
  _$ExchangeRateListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchangeRates = null,
  }) {
    return _then(_value.copyWith(
      exchangeRates: null == exchangeRates
          ? _value.exchangeRates
          : exchangeRates // ignore: cast_nullable_to_non_nullable
              as List<ExchangeRateItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExchangeRateListModelCopyWith<$Res>
    implements $ExchangeRateListModelCopyWith<$Res> {
  factory _$$_ExchangeRateListModelCopyWith(_$_ExchangeRateListModel value,
          $Res Function(_$_ExchangeRateListModel) then) =
      __$$_ExchangeRateListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExchangeRateItemModel> exchangeRates});
}

/// @nodoc
class __$$_ExchangeRateListModelCopyWithImpl<$Res>
    extends _$ExchangeRateListModelCopyWithImpl<$Res, _$_ExchangeRateListModel>
    implements _$$_ExchangeRateListModelCopyWith<$Res> {
  __$$_ExchangeRateListModelCopyWithImpl(_$_ExchangeRateListModel _value,
      $Res Function(_$_ExchangeRateListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchangeRates = null,
  }) {
    return _then(_$_ExchangeRateListModel(
      exchangeRates: null == exchangeRates
          ? _value._exchangeRates
          : exchangeRates // ignore: cast_nullable_to_non_nullable
              as List<ExchangeRateItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExchangeRateListModel implements _ExchangeRateListModel {
  const _$_ExchangeRateListModel(
      {final List<ExchangeRateItemModel> exchangeRates = const []})
      : _exchangeRates = exchangeRates;

  factory _$_ExchangeRateListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangeRateListModelFromJson(json);

  final List<ExchangeRateItemModel> _exchangeRates;
  @override
  @JsonKey()
  List<ExchangeRateItemModel> get exchangeRates {
    if (_exchangeRates is EqualUnmodifiableListView) return _exchangeRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exchangeRates);
  }

  @override
  String toString() {
    return 'ExchangeRateListModel(exchangeRates: $exchangeRates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeRateListModel &&
            const DeepCollectionEquality()
                .equals(other._exchangeRates, _exchangeRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_exchangeRates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeRateListModelCopyWith<_$_ExchangeRateListModel> get copyWith =>
      __$$_ExchangeRateListModelCopyWithImpl<_$_ExchangeRateListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangeRateListModelToJson(
      this,
    );
  }
}

abstract class _ExchangeRateListModel implements ExchangeRateListModel {
  const factory _ExchangeRateListModel(
          {final List<ExchangeRateItemModel> exchangeRates}) =
      _$_ExchangeRateListModel;

  factory _ExchangeRateListModel.fromJson(Map<String, dynamic> json) =
      _$_ExchangeRateListModel.fromJson;

  @override
  List<ExchangeRateItemModel> get exchangeRates;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeRateListModelCopyWith<_$_ExchangeRateListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
