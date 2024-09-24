import 'package:bito_test/domain/usecases/get_pairs_usecase.dart';

import 'currency_select_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';

abstract class CurrencySelectNotifier
    extends StateNotifier<CurrencySelectState> {
  CurrencySelectNotifier(super.state);

  Future<void> fetchData();
}

class CurrencySelectNotifierImpl extends CurrencySelectNotifier {
  final GetPairsUseCase getPairsUseCase;
  final AppRouter appRouter;

  CurrencySelectNotifierImpl({
    required this.getPairsUseCase,
    required this.appRouter,
  }) : super(CurrencySelectState.init());

  @override
  Future<void> fetchData() async {
    final result = await getPairsUseCase.execute(null);
    result.when(success: (data) {
      state = CurrencySelectState(currencyList: data);
    }, error: (error) {
      state = CurrencySelectState.init();
    });
  }
}
