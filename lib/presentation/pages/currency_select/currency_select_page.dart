import 'package:auto_route/annotations.dart';
import 'package:bito_test/domain/entity/currency_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money2/money2.dart';

import '../../di_providers/di_provider.dart';
import 'currency_select_state.dart';

@RoutePage()
class CurrencySelectPage extends ConsumerStatefulWidget {
  const CurrencySelectPage({
    required this.onChangedCurrentCurrency,
    super.key,
  });

  final Function(Currency currency) onChangedCurrentCurrency;

  @override
  ConsumerState<CurrencySelectPage> createState() => _CurrencySelectPageState();
}

class _CurrencySelectPageState extends ConsumerState<CurrencySelectPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ref.read(currencySelectStateNotifierProvider.notifier).fetchData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CurrencySelectState state = ref.watch(currencySelectStateNotifierProvider);

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: _buildAppBarTitle(),
      ),
      body: ListView.builder(
          itemCount: state.currencyList.length,
          itemBuilder: (context, index) {
            return _buildItemTile(
                item: state.currencyList[index],
                onTap: () => widget.onChangedCurrentCurrency
                    .call(state.currencyList[index].currency));
          }),
    ));
  }
}

Widget _buildItemTile({
  required CurrencyItem item,
  required Function() onTap,
}) {
  return InkWell(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                item.iconUrl,
                width: 25,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                item.currency.isoCode,
                style: const TextStyle(fontSize: 18),
              )
            ],
          )));
}

Widget _buildAppBarTitle() {
  return const Text(
    'Currency Select',
    style: TextStyle(fontSize: 20),
  );
}
