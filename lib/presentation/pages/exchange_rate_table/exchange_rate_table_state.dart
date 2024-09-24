import 'package:bito_test/domain/entity/currency_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate_table_state.freezed.dart';

@freezed
class ExchangeRateTableState with _$ExchangeRateTableState {
  factory ExchangeRateTableState({
    required List<CurrencyItem> currencyList,
  }) = _ExchangeRateTableState;

  factory ExchangeRateTableState.init() =>
      ExchangeRateTableState(currencyList: []);
}
