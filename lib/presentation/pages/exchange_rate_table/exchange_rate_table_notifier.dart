import 'exchange_rate_table_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routers/router.dart';

abstract class ExchangeRateTableNotifier
    extends StateNotifier<ExchangeRateTableState> {
  ExchangeRateTableNotifier(super.state);

  void goToExchangeRateTablePage();
  void goToConversionPage();
  void goToSelectionPage();
}

class ExchangeRateTableNotifierImpl extends ExchangeRateTableNotifier {
  final AppRouter appRouter;

  ExchangeRateTableNotifierImpl({
    required this.appRouter,
  }) : super(ExchangeRateTableState.init());

  @override
  void goToExchangeRateTablePage() {
    // appRouter.push(PasswordFastLoginRoute());
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
