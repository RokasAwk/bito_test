// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_pairs_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPairsResponseDto _$GetPairsResponseDtoFromJson(Map<String, dynamic> json) {
  return _GetPairsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetPairsResponseDto {
  String get id => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_icon")
  String get currencyIcon => throw _privateConstructorUsedError;
  @JsonKey(name: 'twd_price')
  double get twdPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_decimal')
  String get amountDecimal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPairsResponseDtoCopyWith<GetPairsResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPairsResponseDtoCopyWith<$Res> {
  factory $GetPairsResponseDtoCopyWith(
          GetPairsResponseDto value, $Res Function(GetPairsResponseDto) then) =
      _$GetPairsResponseDtoCopyWithImpl<$Res, GetPairsResponseDto>;
  @useResult
  $Res call(
      {String id,
      String currency,
      @JsonKey(name: "currency_icon") String currencyIcon,
      @JsonKey(name: 'twd_price') double twdPrice,
      @JsonKey(name: 'amount_decimal') String amountDecimal});
}

/// @nodoc
class _$GetPairsResponseDtoCopyWithImpl<$Res, $Val extends GetPairsResponseDto>
    implements $GetPairsResponseDtoCopyWith<$Res> {
  _$GetPairsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currency = null,
    Object? currencyIcon = null,
    Object? twdPrice = null,
    Object? amountDecimal = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      currencyIcon: null == currencyIcon
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as String,
      twdPrice: null == twdPrice
          ? _value.twdPrice
          : twdPrice // ignore: cast_nullable_to_non_nullable
              as double,
      amountDecimal: null == amountDecimal
          ? _value.amountDecimal
          : amountDecimal // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPairsResponseDtoImplCopyWith<$Res>
    implements $GetPairsResponseDtoCopyWith<$Res> {
  factory _$$GetPairsResponseDtoImplCopyWith(_$GetPairsResponseDtoImpl value,
          $Res Function(_$GetPairsResponseDtoImpl) then) =
      __$$GetPairsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String currency,
      @JsonKey(name: "currency_icon") String currencyIcon,
      @JsonKey(name: 'twd_price') double twdPrice,
      @JsonKey(name: 'amount_decimal') String amountDecimal});
}

/// @nodoc
class __$$GetPairsResponseDtoImplCopyWithImpl<$Res>
    extends _$GetPairsResponseDtoCopyWithImpl<$Res, _$GetPairsResponseDtoImpl>
    implements _$$GetPairsResponseDtoImplCopyWith<$Res> {
  __$$GetPairsResponseDtoImplCopyWithImpl(_$GetPairsResponseDtoImpl _value,
      $Res Function(_$GetPairsResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currency = null,
    Object? currencyIcon = null,
    Object? twdPrice = null,
    Object? amountDecimal = null,
  }) {
    return _then(_$GetPairsResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      currencyIcon: null == currencyIcon
          ? _value.currencyIcon
          : currencyIcon // ignore: cast_nullable_to_non_nullable
              as String,
      twdPrice: null == twdPrice
          ? _value.twdPrice
          : twdPrice // ignore: cast_nullable_to_non_nullable
              as double,
      amountDecimal: null == amountDecimal
          ? _value.amountDecimal
          : amountDecimal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPairsResponseDtoImpl implements _GetPairsResponseDto {
  _$GetPairsResponseDtoImpl(
      {required this.id,
      required this.currency,
      @JsonKey(name: "currency_icon") required this.currencyIcon,
      @JsonKey(name: 'twd_price') required this.twdPrice,
      @JsonKey(name: 'amount_decimal') required this.amountDecimal});

  factory _$GetPairsResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPairsResponseDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String currency;
  @override
  @JsonKey(name: "currency_icon")
  final String currencyIcon;
  @override
  @JsonKey(name: 'twd_price')
  final double twdPrice;
  @override
  @JsonKey(name: 'amount_decimal')
  final String amountDecimal;

  @override
  String toString() {
    return 'GetPairsResponseDto(id: $id, currency: $currency, currencyIcon: $currencyIcon, twdPrice: $twdPrice, amountDecimal: $amountDecimal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPairsResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.currencyIcon, currencyIcon) ||
                other.currencyIcon == currencyIcon) &&
            (identical(other.twdPrice, twdPrice) ||
                other.twdPrice == twdPrice) &&
            (identical(other.amountDecimal, amountDecimal) ||
                other.amountDecimal == amountDecimal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, currency, currencyIcon, twdPrice, amountDecimal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPairsResponseDtoImplCopyWith<_$GetPairsResponseDtoImpl> get copyWith =>
      __$$GetPairsResponseDtoImplCopyWithImpl<_$GetPairsResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPairsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetPairsResponseDto implements GetPairsResponseDto {
  factory _GetPairsResponseDto(
      {required final String id,
      required final String currency,
      @JsonKey(name: "currency_icon") required final String currencyIcon,
      @JsonKey(name: 'twd_price') required final double twdPrice,
      @JsonKey(name: 'amount_decimal')
      required final String amountDecimal}) = _$GetPairsResponseDtoImpl;

  factory _GetPairsResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetPairsResponseDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get currency;
  @override
  @JsonKey(name: "currency_icon")
  String get currencyIcon;
  @override
  @JsonKey(name: 'twd_price')
  double get twdPrice;
  @override
  @JsonKey(name: 'amount_decimal')
  String get amountDecimal;
  @override
  @JsonKey(ignore: true)
  _$$GetPairsResponseDtoImplCopyWith<_$GetPairsResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
