// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pairs_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPairsResponseDtoImpl _$$GetPairsResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPairsResponseDtoImpl(
      id: json['id'] as String,
      currency: json['currency'] as String,
      currencyIcon: json['currency_icon'] as String,
      twdPrice: (json['twd_price'] as num).toDouble(),
      amountDecimal: json['amount_decimal'] as String,
    );

Map<String, dynamic> _$$GetPairsResponseDtoImplToJson(
        _$GetPairsResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'currency_icon': instance.currencyIcon,
      'twd_price': instance.twdPrice,
      'amount_decimal': instance.amountDecimal,
    };
