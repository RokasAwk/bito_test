import '../entity/currency_item.dart';

abstract class PairsRepository {
  Future<List<CurrencyItem>> getPairs();
}
