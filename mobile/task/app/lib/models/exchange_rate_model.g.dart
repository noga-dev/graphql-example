// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExchangeRateItemModel _$$_ExchangeRateItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_ExchangeRateItemModel(
      code: json['code'] as String? ?? '',
      rates: (json['rates'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$_ExchangeRateItemModelToJson(
        _$_ExchangeRateItemModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'rates': instance.rates,
      'description': instance.description,
    };

_$_ExchangeRateListModel _$$_ExchangeRateListModelFromJson(
        Map<String, dynamic> json) =>
    _$_ExchangeRateListModel(
      exchangeRates: (json['exchangeRates'] as List<dynamic>?)
              ?.map((e) =>
                  ExchangeRateItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ExchangeRateListModelToJson(
        _$_ExchangeRateListModel instance) =>
    <String, dynamic>{
      'exchangeRates': instance.exchangeRates,
    };
