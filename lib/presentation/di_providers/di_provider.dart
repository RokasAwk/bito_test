import 'package:bito_test/data/apis/pairs_api.dart';
import 'package:bito_test/data/repository/pairs_repository_impl.dart';
import 'package:bito_test/domain/repository/pairs_repository.dart';
import 'package:bito_test/domain/usecases/get_pairs_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pages/currency_rate_conversion/currency_rate_conversion_notifier.dart';
import '../pages/currency_rate_conversion/currency_rate_conversion_state.dart';
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
    getPairsUseCase: ref.read(getPairsUseCaseProvider),
    appRouter: ref.read(routerProvider),
  );
});

final currencyRateConversionStateNotifierProvider = StateNotifierProvider<
    CurrencyRateConversionNotifier, CurrencyRateConversionState>((ref) {
  return CurrencyRateConversionNotifierImpl(
    getPairsUseCase: ref.read(getPairsUseCaseProvider),
    appRouter: ref.read(routerProvider),
  );
});

final pairsApiProvider = Provider.autoDispose<PairsApi>((ref) {
  return PairsApi(
    Dio(),
  );
});
