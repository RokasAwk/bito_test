import 'package:bito_test/presentation/pages/home/home_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/usecases/get_pairs_usecase.dart';
import '../../routers/router.dart';

abstract class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(super.state);

  Future<void> fetchData();
  void goToExchangeRateTablePage();
  void goToConversionPage();
}

class HomeNotifierImpl extends HomeNotifier {
  final GetPairsUseCase getPairsUseCase;
  final AppRouter appRouter;

  HomeNotifierImpl({
    required this.getPairsUseCase,
    required this.appRouter,
  }) : super(HomeState.init());

  @override
  Future<void> fetchData() async {
    final result = await getPairsUseCase.execute(null);
    result.when(success: (data) {
      state = state.copyWith(currencyList: data);
    }, error: (error) {
      state = HomeState.init();
    });
  }

  @override
  void goToExchangeRateTablePage() {
    appRouter.push(const ExchangeRateTableRoute());
  }

  @override
  void goToConversionPage() {
    appRouter
        .push(CurrencyRateConversionRoute(currencyList: state.currencyList));
  }
}
