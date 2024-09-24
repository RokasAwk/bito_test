import 'package:auto_route/annotations.dart';
import 'package:bito_test/presentation/pages/home/home_notifier.dart';
import 'package:bito_test/presentation/pages/home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di_providers/di_provider.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ref.read(homeStateNotifierProvider.notifier).fetchData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    HomeState state = ref.watch(homeStateNotifierProvider);
    HomeNotifier notifier = ref.read(homeStateNotifierProvider.notifier);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: const Text('Bito Test App')),
          body: Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 32),
            child: Column(
              children: [
                _buildSubPageBtn(
                  page: 'Currency exchange rate table',
                  onPressed: () => notifier.goToExchangeRateTablePage(),
                ),
                _buildSubPageBtn(
                  page: 'Currency conversion page',
                  onPressed: () => notifier.goToConversionPage(),
                ),
              ],
            ),
          )),
    );
  }
}

Widget _buildSubPageBtn({
  required String page,
  required Function() onPressed,
}) {
  return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        page,
        style: const TextStyle(fontSize: 16),
      ));
}
