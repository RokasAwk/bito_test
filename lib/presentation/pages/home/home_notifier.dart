import 'package:bito_test/presentation/pages/exchange_rate_table/exchange_rate_table_page.dart';
import 'package:bito_test/presentation/pages/home/home_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';

abstract class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(super.state);

  void goToExchangeRateTablePage();
  void goToConversionPage();
  void goToSelectionPage();
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
    // TODO: implement goToSelectionPage
  }
}
