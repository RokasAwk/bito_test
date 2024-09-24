import 'dart:async';
import 'package:bito_test/data/apis/pairs_api.dart';
import 'package:decimal/decimal.dart';
import 'package:money2/money2.dart';

import '../../domain/entity/currency_item.dart';
import '../../domain/repository/pairs_repository.dart';
import '../apis/get_pairs_response_dto.dart';

class PairsRepositoryImpl extends PairsRepository {
  PairsRepositoryImpl({
    required PairsApi Function() pairsApi,
  }) : _pairsApi = pairsApi;

  final PairsApi Function() _pairsApi;

  @override
  Future<List<CurrencyItem>> getPairs() async {
    final r = await _pairsApi().getPairs();
    //  handleApiResponseIfError(r.status);

    List<CurrencyItem> paymentMethods =
        r.map((e) => e.toCurrencyItem()).toList();

    return paymentMethods;
  }
}

extension GetPairsResponseDtoMapper on GetPairsResponseDto {
  CurrencyItem toCurrencyItem() {
    return CurrencyItem(
        id: id,
        currency: Currency.create(
          currency,
          int.parse(amountDecimal),
        ),
        iconUrl: currencyIcon,
        twdPrice: twdPrice,
        amount: Decimal.parse(amountDecimal));
  }
}
