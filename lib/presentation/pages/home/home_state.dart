import 'package:money2/money2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required Currency currentCurrency,
  }) = _HomeState;

  factory HomeState.init() => HomeState(
          currentCurrency: Currency.create(
        'GHS',
        2,
      ));
}
