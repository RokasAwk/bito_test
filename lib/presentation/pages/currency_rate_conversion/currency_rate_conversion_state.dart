import 'package:bito_test/domain/entity/currency_item.dart';
import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_rate_conversion_state.freezed.dart';

@freezed
class CurrencyRateConversionState with _$CurrencyRateConversionState {
  factory CurrencyRateConversionState({
    required Decimal rate,
    required CurrencyItem selectFrom,
    required CurrencyItem selectTo,
    required Decimal selectFromAmount,
    required Decimal selectToAmount,
  }) = _CurrencyRateConversionState;

  factory CurrencyRateConversionState.init() => CurrencyRateConversionState(
        rate: Decimal.one,
        selectFrom: CurrencyItem.empty(),
        selectTo: CurrencyItem.empty(),
        selectFromAmount: Decimal.zero,
        selectToAmount: Decimal.zero,
      );
}
