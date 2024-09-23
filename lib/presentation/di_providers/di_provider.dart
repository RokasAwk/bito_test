import 'package:bito_test/presentation/pages/exchange_rate_table/exchange_rate_table_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pages/exchange_rate_table/exchange_rate_table_state.dart';
import '../pages/home/home_notifier.dart';
import '../pages/home/home_state.dart';
import '../routers/router.dart';

final routerProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});

final homeStateNotifierProvider =
    StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifierImpl(
    appRouter: ref.read(routerProvider),
  );
});

final exchangeRateTableStateNotifierProvider =
    StateNotifierProvider<ExchangeRateTableNotifier, ExchangeRateTableState>(
        (ref) {
  return ExchangeRateTableNotifierImpl(
    appRouter: ref.read(routerProvider),
  );
});
