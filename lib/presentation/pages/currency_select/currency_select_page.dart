import 'package:auto_route/annotations.dart';
import 'package:bito_test/domain/entity/currency_item.dart';
import 'package:bito_test/presentation/pages/home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di_providers/di_provider.dart';

@RoutePage()
class CurrencySelectPage extends ConsumerStatefulWidget {
  const CurrencySelectPage({
    super.key,
    required this.onTap,
  });

  final Function(CurrencyItem currencyItem) onTap;
  @override
  ConsumerState<CurrencySelectPage> createState() => _CurrencySelectPageState();
}

class _CurrencySelectPageState extends ConsumerState<CurrencySelectPage> {
  @override
  Widget build(BuildContext context) {
    HomeState state = ref.watch(homeStateNotifierProvider);

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
                onTap: () {
                  widget.onTap.call(state.currencyList[index]);
                });
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
