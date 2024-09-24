// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_select_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrencySelectState {
  List<CurrencyItem> get currencyList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencySelectStateCopyWith<CurrencySelectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencySelectStateCopyWith<$Res> {
  factory $CurrencySelectStateCopyWith(
          CurrencySelectState value, $Res Function(CurrencySelectState) then) =
      _$CurrencySelectStateCopyWithImpl<$Res, CurrencySelectState>;
  @useResult
  $Res call({List<CurrencyItem> currencyList});
}

/// @nodoc
class _$CurrencySelectStateCopyWithImpl<$Res, $Val extends CurrencySelectState>
    implements $CurrencySelectStateCopyWith<$Res> {
  _$CurrencySelectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyList = null,
  }) {
    return _then(_value.copyWith(
      currencyList: null == currencyList
          ? _value.currencyList
          : currencyList // ignore: cast_nullable_to_non_nullable
              as List<CurrencyItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencySelectStateImplCopyWith<$Res>
    implements $CurrencySelectStateCopyWith<$Res> {
  factory _$$CurrencySelectStateImplCopyWith(_$CurrencySelectStateImpl value,
          $Res Function(_$CurrencySelectStateImpl) then) =
      __$$CurrencySelectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CurrencyItem> currencyList});
}

/// @nodoc
class __$$CurrencySelectStateImplCopyWithImpl<$Res>
    extends _$CurrencySelectStateCopyWithImpl<$Res, _$CurrencySelectStateImpl>
    implements _$$CurrencySelectStateImplCopyWith<$Res> {
  __$$CurrencySelectStateImplCopyWithImpl(_$CurrencySelectStateImpl _value,
      $Res Function(_$CurrencySelectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyList = null,
  }) {
    return _then(_$CurrencySelectStateImpl(
      currencyList: null == currencyList
          ? _value._currencyList
          : currencyList // ignore: cast_nullable_to_non_nullable
              as List<CurrencyItem>,
    ));
  }
}

/// @nodoc

class _$CurrencySelectStateImpl implements _CurrencySelectState {
  _$CurrencySelectStateImpl({required final List<CurrencyItem> currencyList})
      : _currencyList = currencyList;

  final List<CurrencyItem> _currencyList;
  @override
  List<CurrencyItem> get currencyList {
    if (_currencyList is EqualUnmodifiableListView) return _currencyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencyList);
  }

  @override
  String toString() {
    return 'CurrencySelectState(currencyList: $currencyList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencySelectStateImpl &&
            const DeepCollectionEquality()
                .equals(other._currencyList, _currencyList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currencyList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencySelectStateImplCopyWith<_$CurrencySelectStateImpl> get copyWith =>
      __$$CurrencySelectStateImplCopyWithImpl<_$CurrencySelectStateImpl>(
          this, _$identity);
}

abstract class _CurrencySelectState implements CurrencySelectState {
  factory _CurrencySelectState(
          {required final List<CurrencyItem> currencyList}) =
      _$CurrencySelectStateImpl;

  @override
  List<CurrencyItem> get currencyList;
  @override
  @JsonKey(ignore: true)
  _$$CurrencySelectStateImplCopyWith<_$CurrencySelectStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
