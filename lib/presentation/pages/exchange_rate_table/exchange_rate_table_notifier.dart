import 'package:bito_test/domain/usecases/get_pairs_usecase.dart';

import 'exchange_rate_table_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';

abstract class ExchangeRateTableNotifier
    extends StateNotifier<ExchangeRateTableState> {
  ExchangeRateTableNotifier(super.state);

  Future<void> fetchData();
}

class ExchangeRateTableNotifierImpl extends ExchangeRateTableNotifier {
  final GetPairsUseCase getPairsUseCase;
  final AppRouter appRouter;

  ExchangeRateTableNotifierImpl({
    required this.getPairsUseCase,
    required this.appRouter,
  }) : super(ExchangeRateTableState.init());

  @override
  Future<void> fetchData() async {
    final result = await getPairsUseCase.execute(null);
    result.when(success: (data) {
      state = ExchangeRateTableState(currencyList: data);
    }, error: (error) {
      state = ExchangeRateTableState.init();
    });
  }
}
