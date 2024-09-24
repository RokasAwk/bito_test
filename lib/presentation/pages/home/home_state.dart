import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/currency_item.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required List<CurrencyItem> currencyList,
  }) = _HomeState;

  factory HomeState.init() => HomeState(currencyList: []);
}
