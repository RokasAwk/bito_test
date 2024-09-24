import 'package:decimal/decimal.dart';
import 'package:money2/money2.dart';

class CurrencyItem {
  final String id;
  final Currency currency;
  final String iconUrl;
  final Decimal twdPrice;
  final int scale;

  CurrencyItem({
    required this.id,
    required this.currency,
    required this.iconUrl,
    required this.twdPrice,
    required this.scale,
  });

  factory CurrencyItem.empty() => CurrencyItem(
      id: '',
      currency: Currency.create('N/A', 2),
      iconUrl: '',
      twdPrice: Decimal.zero,
      scale: 0);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          currency == other.currency &&
          iconUrl == other.iconUrl &&
          twdPrice == other.twdPrice &&
          scale == other.scale;

  @override
  int get hashCode => currency.hashCode ^ iconUrl.hashCode;

  CurrencyItem copyWith({
    Currency? currency,
    String? iconUrl,
    bool? isEnable,
    Decimal? twdPrice,
    int? scale,
  }) {
    return CurrencyItem(
      id: id,
      currency: currency ?? this.currency,
      iconUrl: iconUrl ?? this.iconUrl,
      twdPrice: twdPrice ?? this.twdPrice,
      scale: scale ?? this.scale,
    );
  }
}
