import 'package:auto_route/annotations.dart';
import 'package:bito_test/domain/entity/currency_item.dart';
import 'package:bito_test/presentation/pages/home/home_state.dart';
import 'package:bito_test/presentation/utils/string_extension.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di_providers/di_provider.dart';
import '../../routers/router.dart';

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
  late final AppRouter appRouter;

  @override
  void initState() {
    appRouter = ref.read(routerProvider);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    HomeState homeState = ref.watch(homeStateNotifierProvider);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: _buildAppBarTitle(),
            bottom: _buildAppBarSubTitle(),
          ),
          body: Column(children: [
            SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                child: ListView.builder(
                    itemCount: homeState.currencyList.length,
                    itemBuilder: (context, index) {
                      return _buildItemTile(
                          item: homeState.currencyList[index]);
                    }),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
                onPressed: () => appRouter.push(CurrencyRateConversionRoute(
                    currencyList: homeState.currencyList)),
                icon: const Icon(Icons.price_change_outlined),
                label: const Text(
                  'Rate Conversion',
                  style: TextStyle(fontSize: 20),
                )),
          ])),
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
          Text(item.twdPrice.toString().formatNumberWithComma()),
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
