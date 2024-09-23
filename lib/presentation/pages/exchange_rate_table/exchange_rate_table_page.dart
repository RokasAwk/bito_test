import 'package:auto_route/annotations.dart';
import 'package:bito_test/domain/entity/currency_item.dart';
import 'package:bito_test/presentation/pages/exchange_rate_table/exchange_rate_table_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ref
          .read(exchangeRateTableStateNotifierProvider.notifier)
          .fetchData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ExchangeRateTableState state =
        ref.watch(exchangeRateTableStateNotifierProvider);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: _buildAppBarTitle(),
            bottom: _buildAppBarSubTitle(),
          ),
          body: ListView.builder(
              itemCount: state.currencyList.length,
              itemBuilder: (context, index) {
                return _buildItemTile(item: state.currencyList[index]);
              })),
    );
  }
}

Widget _buildItemTile({
  required CurrencyItem item,
}) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.network(
                item.iconUrl,
                width: 25,
              ),
              const SizedBox(
                width: 8,
              ),
              Text('${item.currency.isoCode} / TWD')
            ],
          ),
          Text('${item.twdPrice}'),
        ],
      ));
}

PreferredSize _buildAppBarSubTitle() {
  return PreferredSize(
      preferredSize: const Size.fromHeight(40),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        height: 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildSubTitle(text: 'Currency'),
            _buildSubTitle(text: 'Price'),
          ],
        ),
      ));
}

Widget _buildSubTitle({required String text}) {
  return Text(
    text,
    style: const TextStyle(color: Colors.white, fontSize: 16),
  );
}

Widget _buildAppBarTitle() {
  return const Text(
    'Rate Table(TWD)',
    style: TextStyle(fontSize: 20),
  );
}
