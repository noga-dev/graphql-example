import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate_model.freezed.dart';
part 'exchange_rate_model.g.dart';

@freezed
class ExchangeRateItemModel with _$ExchangeRateItemModel {
  const factory ExchangeRateItemModel({
    @Default('') String code,
    @Default([]) List<double> rates,
    @Default('') String description,
  }) = _ExchangeRateItemModel;

  factory ExchangeRateItemModel.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRateItemModelFromJson(json);
}

@freezed
class ExchangeRateListModel with _$ExchangeRateListModel {
  const factory ExchangeRateListModel({
    @Default([]) List<ExchangeRateItemModel> exchangeRates,
  }) = _ExchangeRateListModel;

  factory ExchangeRateListModel.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRateListModelFromJson(json);
}
