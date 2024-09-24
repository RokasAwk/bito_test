import 'package:auto_route/annotations.dart';
import 'package:bito_test/domain/entity/currency_item.dart';
import 'package:bito_test/presentation/pages/currency_rate_conversion/widgets/conversion_text_form_filed.dart';
import 'package:bito_test/presentation/pages/currency_rate_conversion/widgets/select_currency_btn.dart';
import 'package:bito_test/presentation/utils/string_extension.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di_providers/di_provider.dart';
import 'currency_rate_conversion_notifier.dart';
import 'currency_rate_conversion_state.dart';

@RoutePage()
class CurrencyRateConversionPage extends ConsumerStatefulWidget {
  const CurrencyRateConversionPage({
    super.key,
    required this.currencyList,
  });
  final List<CurrencyItem> currencyList;
  @override
  ConsumerState<CurrencyRateConversionPage> createState() =>
      _CurrencyRateConversionPageState();
}

class _CurrencyRateConversionPageState
    extends ConsumerState<CurrencyRateConversionPage> {
  final TextEditingController _selectFromController = TextEditingController();
  final TextEditingController _selectToController = TextEditingController();

  @override
  void initState() {
    CurrencyRateConversionNotifier currencyRateConversionNotifier =
        ref.read(currencyRateConversionStateNotifierProvider.notifier);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await currencyRateConversionNotifier.onInit(widget.currencyList);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CurrencyRateConversionState currencyRateConversionState =
        ref.watch(currencyRateConversionStateNotifierProvider);
    CurrencyRateConversionNotifier currencyRateConversionNotifier =
        ref.read(currencyRateConversionStateNotifierProvider.notifier);

    _selectFromController.text = currencyRateConversionState.selectFromAmount
        .toString()
        .formatNumberWithComma();
    _selectToController.text = currencyRateConversionState.selectToAmount
        .toString()
        .formatNumberWithComma();

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: _buildAppBarTitle(),
            ),
            body: Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.only(left: 16, right: 16, top: 32),
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (currencyRateConversionState !=
                              CurrencyRateConversionState.init()) ...[
                            SelectCurrencyBtn(
                                item: currencyRateConversionState.selectFrom,
                                onPressed: () {
                                  currencyRateConversionNotifier
                                      .goToSelectionPage(isFrom: true);
                                })
                          ],
                          ConversionTextFormFiled(
                              isFrom: true,
                              controller: _selectFromController,
                              onChanged: (value) {
                                if (_selectFromController.text.isNotEmpty) {
                                  currencyRateConversionNotifier.updateAmount(
                                      isFrom: true,
                                      selectFromController:
                                          _selectFromController,
                                      selectToController: _selectToController);
                                }
                              })
                        ],
                      ),
                    ),
                    Stack(alignment: const Alignment(0.8, -0.5), children: [
                      Stack(
                        alignment: const Alignment(-0.7, 0),
                        children: [
                          const Divider(
                            thickness: 1.5,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            child: const Icon(
                              Icons.keyboard_double_arrow_down,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      if (currencyRateConversionState !=
                          CurrencyRateConversionState.init()) ...[
                        _buildConversionResult(
                            selectFrom: currencyRateConversionState.selectFrom,
                            selectTo: currencyRateConversionState.selectTo,
                            rate: currencyRateConversionState.rate),
                      ]
                    ]),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (currencyRateConversionState !=
                              CurrencyRateConversionState.init()) ...[
                            SelectCurrencyBtn(
                                item: currencyRateConversionState.selectTo,
                                onPressed: () {
                                  currencyRateConversionNotifier
                                      .goToSelectionPage(isFrom: false);
                                }),
                          ],
                          ConversionTextFormFiled(
                              isFrom: false,
                              controller: _selectToController,
                              onChanged: (value) {
                                if (_selectToController.text.isNotEmpty) {
                                  currencyRateConversionNotifier.updateAmount(
                                      isFrom: false,
                                      selectFromController:
                                          _selectFromController,
                                      selectToController: _selectToController);
                                }
                              })
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}

Widget _buildAppBarTitle() {
  return const Text(
    'Rate Conversion',
    style: TextStyle(fontSize: 20),
  );
}

Widget _buildConversionResult({
  required CurrencyItem selectFrom,
  required CurrencyItem selectTo,
  required Decimal rate,
}) {
  return RichText(
      text: TextSpan(children: [
    TextSpan(
        text: '1 ${selectFrom.currency.isoCode} ≈ ',
        style: const TextStyle(color: Colors.black)),
    TextSpan(
        text: rate.toStringAsPrecision(selectTo.scale),
        style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
    TextSpan(
        text: ' ${selectTo.currency.isoCode}',
        style: const TextStyle(color: Colors.black)),
  ]));
}
