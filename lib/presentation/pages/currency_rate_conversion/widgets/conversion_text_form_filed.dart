import 'package:bito_test/presentation/pages/widgets/common_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConversionTextFormFiled extends StatelessWidget {
  const ConversionTextFormFiled({
    required this.onChanged,
    required this.controller,
    required this.isFrom,
    super.key,
  });

  final void Function(String value) onChanged;
  final TextEditingController controller;
  final bool isFrom; // 是否為欲轉換的Currency

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 150,
        child: TextFormField(
          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus?.unfocus(),
          textAlign: TextAlign.end,
          controller: controller,
          maxLines: 1,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            isDense: true,
            border: enableBorder(),
            focusedBorder: focusBorder(),
            errorBorder: errorBorder(),
            disabledBorder: disableBorder(),
          ),
          onChanged: (value) => onChanged.call(value),
        ));
  }
}
