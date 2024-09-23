import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_pairs_response_dto.freezed.dart';
part 'get_pairs_response_dto.g.dart';

@freezed
class GetPairsResponseDto with _$GetPairsResponseDto {
  factory GetPairsResponseDto({
    required String id,
    required String currency,
    @JsonKey(name: "currency_icon") required String currencyIcon,
    @JsonKey(name: 'twd_price') required double twdPrice,
    @JsonKey(name: 'amount_decimal') required String amountDecimal,
  }) = _GetPairsResponseDto;

  factory GetPairsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetPairsResponseDtoFromJson(json);
}
