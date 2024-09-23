import 'package:auto_route/annotations.dart';
import 'package:bito_test/presentation/pages/exchange_rate_table/exchange_rate_table_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di_providers/di_provider.dart';
import 'exchange_rate_table_notifier.dart';

@RoutePage()
class ExchangeRateTablePage extends ConsumerStatefulWidget {
  const ExchangeRateTablePage({
    super.key,
  });

  @override
  ConsumerState<ExchangeRateTablePage> createState() =>
      _ExchangeRateTablePageState();
}

class _ExchangeRateTablePageState extends ConsumerState<ExchangeRateTablePage> {
  @override
  Widget build(BuildContext context) {
    ExchangeRateTableState state =
        ref.watch(exchangeRateTableStateNotifierProvider);
    ExchangeRateTableNotifier notifier =
        ref.read(exchangeRateTableStateNotifierProvider.notifier);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: _buildAppBarTitle(),
          ),
          body: Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 32),
            child: Column(
              children: [],
            ),
          )),
    );
  }
}

Widget _buildAppBarTitle() {
  return const Text(
    'Rate Table(TWD)',
    style: TextStyle(fontSize: 20),
  );
}
