import 'package:bito_test/domain/entity/currency_item.dart';
import 'package:bito_test/domain/usecases/get_pairs_usecase.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

import '../../../utils/toast_utils.dart';
import 'currency_rate_conversion_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';

abstract class CurrencyRateConversionNotifier
    extends StateNotifier<CurrencyRateConversionState> {
  CurrencyRateConversionNotifier(super.state);

  Future<void> onInit(List<CurrencyItem> itemList);

  void updateRate({
    required Decimal selectFromTwdPrice,
    required Decimal selectToTwdPrice,
  });

  void updateAmount({
    required bool isFrom,
    required TextEditingController selectFromController,
    required TextEditingController selectToController,
  });

  void goToSelectionPage({
    required bool isFrom,
  });
}

class CurrencyRateConversionNotifierImpl
    extends CurrencyRateConversionNotifier {
  final GetPairsUseCase getPairsUseCase;
  final AppRouter appRouter;

  CurrencyRateConversionNotifierImpl({
    required this.getPairsUseCase,
    required this.appRouter,
  }) : super(CurrencyRateConversionState.init());

  @override
  Future<void> onInit(List<CurrencyItem> itemList) async {
    state = state.copyWith(
      selectFrom: itemList.first,
      selectTo: itemList.first,
    );
  }

  @override
  void updateRate({
    required Decimal selectFromTwdPrice,
    required Decimal selectToTwdPrice,
  }) {
    Decimal rate = (selectFromTwdPrice / selectToTwdPrice)
        .toDecimal(scaleOnInfinitePrecision: selectToTwdPrice.scale);
    state = state.copyWith(
      rate: rate,
      selectFromAmount: Decimal.zero,
      selectToAmount: Decimal.zero,
    );
  }

  @override
  void updateAmount({
    required bool isFrom,
    required TextEditingController selectFromController,
    required TextEditingController selectToController,
  }) {
    if (isFrom) {
      Decimal selectFromAmount = Decimal.parse(selectFromController.text);
      Decimal selectToAmount =
          (selectFromAmount * state.rate).round(scale: state.selectTo.scale);

      state = state.copyWith(
        selectFromAmount: selectFromAmount,
        selectToAmount: selectToAmount,
      );
    } else {
      Decimal selectToAmount = Decimal.parse(selectToController.text);
      Decimal selectFromAmount = (selectToAmount / state.rate)
          .toDecimal(scaleOnInfinitePrecision: state.selectFrom.scale)
          .round(scale: state.selectFrom.scale);

      state = state.copyWith(
        selectFromAmount: selectFromAmount,
        selectToAmount: selectToAmount,
      );
    }
  }

  @override
  void goToSelectionPage({
    required bool isFrom,
  }) {
    appRouter.push(CurrencySelectRoute(onTap: (CurrencyItem currencyItem) {
      if (isFrom) {
        state = state.copyWith(
          selectFrom: currencyItem,
        );
      } else {
        state = state.copyWith(
          selectTo: currencyItem,
        );
      }
      updateRate(
        selectFromTwdPrice: state.selectFrom.twdPrice,
        selectToTwdPrice: state.selectTo.twdPrice,
      );

      ToastUtils.showToast('Changed Successfully!');
      appRouter.pop();
    }));
  }
}
