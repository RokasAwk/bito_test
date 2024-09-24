import 'package:bito_test/data/apis/pairs_api.dart';
import 'package:bito_test/data/repository/pairs_repository_impl.dart';
import 'package:bito_test/domain/repository/pairs_repository.dart';
import 'package:bito_test/domain/usecases/get_pairs_usecase.dart';
import 'package:bito_test/presentation/pages/exchange_rate_table/exchange_rate_table_notifier.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pages/currency_select/currency_select_notifier.dart';
import '../pages/currency_select/currency_select_state.dart';
import '../pages/exchange_rate_table/exchange_rate_table_state.dart';
import '../pages/home/home_notifier.dart';
import '../pages/home/home_state.dart';
import '../routers/router.dart';

part "usecase_provider.dart";
part "repo_provider.dart";

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
    getPairsUseCase: ref.read(getPairsUseCaseProvider),
    appRouter: ref.read(routerProvider),
  );
});

final currencySelectStateNotifierProvider =
    StateNotifierProvider<CurrencySelectNotifier, CurrencySelectState>((ref) {
  return CurrencySelectNotifierImpl(
    getPairsUseCase: ref.read(getPairsUseCaseProvider),
    appRouter: ref.read(routerProvider),
  );
});

final pairsApiProvider = Provider.autoDispose<PairsApi>((ref) {
  return PairsApi(
    Dio(),
  );
});
