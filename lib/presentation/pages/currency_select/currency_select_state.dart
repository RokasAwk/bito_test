import 'package:bito_test/domain/entity/currency_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_select_state.freezed.dart';

@freezed
class CurrencySelectState with _$CurrencySelectState {
  factory CurrencySelectState({
    required List<CurrencyItem> currencyList,
  }) = _CurrencySelectState;

  factory CurrencySelectState.init() => CurrencySelectState(currencyList: []);
}
