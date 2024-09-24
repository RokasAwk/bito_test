import 'package:flutter/material.dart';
import '../../../../domain/entity/currency_item.dart';

class SelectCurrencyBtn extends StatelessWidget {
  const SelectCurrencyBtn({
    required this.item,
    required this.onPressed,
    super.key,
  });

  final CurrencyItem item;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        onPressed: onPressed,
        icon: Image.network(
          item.iconUrl,
          width: 30,
        ),
        label: Text(
          item.currency.isoCode,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          overflow: TextOverflow.ellipsis,
        ));
  }
}
