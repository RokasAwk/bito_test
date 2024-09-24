// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_rate_conversion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrencyRateConversionState {
  Decimal get rate => throw _privateConstructorUsedError;
  CurrencyItem get selectFrom => throw _privateConstructorUsedError;
  CurrencyItem get selectTo => throw _privateConstructorUsedError;
  Decimal get selectFromAmount => throw _privateConstructorUsedError;
  Decimal get selectToAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyRateConversionStateCopyWith<CurrencyRateConversionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyRateConversionStateCopyWith<$Res> {
  factory $CurrencyRateConversionStateCopyWith(
          CurrencyRateConversionState value,
          $Res Function(CurrencyRateConversionState) then) =
      _$CurrencyRateConversionStateCopyWithImpl<$Res,
          CurrencyRateConversionState>;
  @useResult
  $Res call(
      {Decimal rate,
      CurrencyItem selectFrom,
      CurrencyItem selectTo,
      Decimal selectFromAmount,
      Decimal selectToAmount});
}

/// @nodoc
class _$CurrencyRateConversionStateCopyWithImpl<$Res,
        $Val extends CurrencyRateConversionState>
    implements $CurrencyRateConversionStateCopyWith<$Res> {
  _$CurrencyRateConversionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? selectFrom = null,
    Object? selectTo = null,
    Object? selectFromAmount = null,
    Object? selectToAmount = null,
  }) {
    return _then(_value.copyWith(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Decimal,
      selectFrom: null == selectFrom
          ? _value.selectFrom
          : selectFrom // ignore: cast_nullable_to_non_nullable
              as CurrencyItem,
      selectTo: null == selectTo
          ? _value.selectTo
          : selectTo // ignore: cast_nullable_to_non_nullable
              as CurrencyItem,
      selectFromAmount: null == selectFromAmount
          ? _value.selectFromAmount
          : selectFromAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      selectToAmount: null == selectToAmount
          ? _value.selectToAmount
          : selectToAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyRateConversionStateImplCopyWith<$Res>
    implements $CurrencyRateConversionStateCopyWith<$Res> {
  factory _$$CurrencyRateConversionStateImplCopyWith(
          _$CurrencyRateConversionStateImpl value,
          $Res Function(_$CurrencyRateConversionStateImpl) then) =
      __$$CurrencyRateConversionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Decimal rate,
      CurrencyItem selectFrom,
      CurrencyItem selectTo,
      Decimal selectFromAmount,
      Decimal selectToAmount});
}

/// @nodoc
class __$$CurrencyRateConversionStateImplCopyWithImpl<$Res>
    extends _$CurrencyRateConversionStateCopyWithImpl<$Res,
        _$CurrencyRateConversionStateImpl>
    implements _$$CurrencyRateConversionStateImplCopyWith<$Res> {
  __$$CurrencyRateConversionStateImplCopyWithImpl(
      _$CurrencyRateConversionStateImpl _value,
      $Res Function(_$CurrencyRateConversionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? selectFrom = null,
    Object? selectTo = null,
    Object? selectFromAmount = null,
    Object? selectToAmount = null,
  }) {
    return _then(_$CurrencyRateConversionStateImpl(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Decimal,
      selectFrom: null == selectFrom
          ? _value.selectFrom
          : selectFrom // ignore: cast_nullable_to_non_nullable
              as CurrencyItem,
      selectTo: null == selectTo
          ? _value.selectTo
          : selectTo // ignore: cast_nullable_to_non_nullable
              as CurrencyItem,
      selectFromAmount: null == selectFromAmount
          ? _value.selectFromAmount
          : selectFromAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
      selectToAmount: null == selectToAmount
          ? _value.selectToAmount
          : selectToAmount // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc

class _$CurrencyRateConversionStateImpl
    implements _CurrencyRateConversionState {
  _$CurrencyRateConversionStateImpl(
      {required this.rate,
      required this.selectFrom,
      required this.selectTo,
      required this.selectFromAmount,
      required this.selectToAmount});

  @override
  final Decimal rate;
  @override
  final CurrencyItem selectFrom;
  @override
  final CurrencyItem selectTo;
  @override
  final Decimal selectFromAmount;
  @override
  final Decimal selectToAmount;

  @override
  String toString() {
    return 'CurrencyRateConversionState(rate: $rate, selectFrom: $selectFrom, selectTo: $selectTo, selectFromAmount: $selectFromAmount, selectToAmount: $selectToAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyRateConversionStateImpl &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.selectFrom, selectFrom) ||
                other.selectFrom == selectFrom) &&
            (identical(other.selectTo, selectTo) ||
                other.selectTo == selectTo) &&
            (identical(other.selectFromAmount, selectFromAmount) ||
                other.selectFromAmount == selectFromAmount) &&
            (identical(other.selectToAmount, selectToAmount) ||
                other.selectToAmount == selectToAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rate, selectFrom, selectTo,
      selectFromAmount, selectToAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyRateConversionStateImplCopyWith<_$CurrencyRateConversionStateImpl>
      get copyWith => __$$CurrencyRateConversionStateImplCopyWithImpl<
          _$CurrencyRateConversionStateImpl>(this, _$identity);
}

abstract class _CurrencyRateConversionState
    implements CurrencyRateConversionState {
  factory _CurrencyRateConversionState(
          {required final Decimal rate,
          required final CurrencyItem selectFrom,
          required final CurrencyItem selectTo,
          required final Decimal selectFromAmount,
          required final Decimal selectToAmount}) =
      _$CurrencyRateConversionStateImpl;

  @override
  Decimal get rate;
  @override
  CurrencyItem get selectFrom;
  @override
  CurrencyItem get selectTo;
  @override
  Decimal get selectFromAmount;
  @override
  Decimal get selectToAmount;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyRateConversionStateImplCopyWith<_$CurrencyRateConversionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
