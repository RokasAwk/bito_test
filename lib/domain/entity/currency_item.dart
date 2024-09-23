import 'package:decimal/decimal.dart';
import 'package:money2/money2.dart';

class CurrencyItem {
  final String id;
  final Currency currency;
  final String iconUrl;
  final double twdPrice;
  final Decimal amount;

  CurrencyItem({
    required this.id,
    required this.currency,
    required this.iconUrl,
    required this.twdPrice,
    required this.amount,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          currency == other.currency &&
          iconUrl == other.iconUrl &&
          twdPrice == other.twdPrice &&
          amount == other.amount;

  @override
  int get hashCode => currency.hashCode ^ iconUrl.hashCode;

  CurrencyItem copyWith({
    Currency? currency,
    String? iconUrl,
    bool? isEnable,
    double? twdPrice,
    Decimal? amount,
  }) {
    return CurrencyItem(
      id: id,
      currency: currency ?? this.currency,
      iconUrl: iconUrl ?? this.iconUrl,
      twdPrice: twdPrice ?? this.twdPrice,
      amount: amount ?? this.amount,
    );
  }
}
