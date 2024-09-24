import 'package:bito_test/presentation/pages/home/home_state.dart';
import 'package:bito_test/utils/toast_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:money2/money2.dart';

import '../../routers/router.dart';

abstract class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(super.state);

  void goToExchangeRateTablePage();
  void goToConversionPage();
  void goToSelectionPage();

  void onChangedCurrentCurrency(Currency currency);
}

class HomeNotifierImpl extends HomeNotifier {
  final AppRouter appRouter;

  HomeNotifierImpl({
    required this.appRouter,
  }) : super(HomeState.init());

  @override
  void goToExchangeRateTablePage() {
    appRouter.push(const ExchangeRateTableRoute());
  }

  @override
  void goToConversionPage() {
    // TODO: implement goToConversionPage
  }

  @override
  void goToSelectionPage() {
    appRouter.push(
        CurrencySelectRoute(onChangedCurrentCurrency: (Currency currency) {
      onChangedCurrentCurrency(currency);
    }));
  }

  @override
  void onChangedCurrentCurrency(Currency currency) {
    state = state.copyWith(currentCurrency: currency);
    ToastUtils.showToast('Changed Successfully!');
  }
}
