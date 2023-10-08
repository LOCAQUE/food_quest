// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mon_choice_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MonchoiceNotifierState {
  String? get currentUserId => throw _privateConstructorUsedError;
  MonChoiceData? get monChoideData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MonchoiceNotifierStateCopyWith<MonchoiceNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonchoiceNotifierStateCopyWith<$Res> {
  factory $MonchoiceNotifierStateCopyWith(MonchoiceNotifierState value,
          $Res Function(MonchoiceNotifierState) then) =
      _$MonchoiceNotifierStateCopyWithImpl<$Res, MonchoiceNotifierState>;
  @useResult
  $Res call({String? currentUserId, MonChoiceData? monChoideData});

  $MonChoiceDataCopyWith<$Res>? get monChoideData;
}

/// @nodoc
class _$MonchoiceNotifierStateCopyWithImpl<$Res,
        $Val extends MonchoiceNotifierState>
    implements $MonchoiceNotifierStateCopyWith<$Res> {
  _$MonchoiceNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserId = freezed,
    Object? monChoideData = freezed,
  }) {
    return _then(_value.copyWith(
      currentUserId: freezed == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      monChoideData: freezed == monChoideData
          ? _value.monChoideData
          : monChoideData // ignore: cast_nullable_to_non_nullable
              as MonChoiceData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MonChoiceDataCopyWith<$Res>? get monChoideData {
    if (_value.monChoideData == null) {
      return null;
    }

    return $MonChoiceDataCopyWith<$Res>(_value.monChoideData!, (value) {
      return _then(_value.copyWith(monChoideData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MonchoiceNotifierStateImplCopyWith<$Res>
    implements $MonchoiceNotifierStateCopyWith<$Res> {
  factory _$$MonchoiceNotifierStateImplCopyWith(
          _$MonchoiceNotifierStateImpl value,
          $Res Function(_$MonchoiceNotifierStateImpl) then) =
      __$$MonchoiceNotifierStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? currentUserId, MonChoiceData? monChoideData});

  @override
  $MonChoiceDataCopyWith<$Res>? get monChoideData;
}

/// @nodoc
class __$$MonchoiceNotifierStateImplCopyWithImpl<$Res>
    extends _$MonchoiceNotifierStateCopyWithImpl<$Res,
        _$MonchoiceNotifierStateImpl>
    implements _$$MonchoiceNotifierStateImplCopyWith<$Res> {
  __$$MonchoiceNotifierStateImplCopyWithImpl(
      _$MonchoiceNotifierStateImpl _value,
      $Res Function(_$MonchoiceNotifierStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserId = freezed,
    Object? monChoideData = freezed,
  }) {
    return _then(_$MonchoiceNotifierStateImpl(
      currentUserId: freezed == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      monChoideData: freezed == monChoideData
          ? _value.monChoideData
          : monChoideData // ignore: cast_nullable_to_non_nullable
              as MonChoiceData?,
    ));
  }
}

/// @nodoc

class _$MonchoiceNotifierStateImpl implements _MonchoiceNotifierState {
  _$MonchoiceNotifierStateImpl({this.currentUserId, this.monChoideData});

  @override
  final String? currentUserId;
  @override
  final MonChoiceData? monChoideData;

  @override
  String toString() {
    return 'MonchoiceNotifierState(currentUserId: $currentUserId, monChoideData: $monChoideData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonchoiceNotifierStateImpl &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId) &&
            (identical(other.monChoideData, monChoideData) ||
                other.monChoideData == monChoideData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUserId, monChoideData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonchoiceNotifierStateImplCopyWith<_$MonchoiceNotifierStateImpl>
      get copyWith => __$$MonchoiceNotifierStateImplCopyWithImpl<
          _$MonchoiceNotifierStateImpl>(this, _$identity);
}

abstract class _MonchoiceNotifierState implements MonchoiceNotifierState {
  factory _MonchoiceNotifierState(
      {final String? currentUserId,
      final MonChoiceData? monChoideData}) = _$MonchoiceNotifierStateImpl;

  @override
  String? get currentUserId;
  @override
  MonChoiceData? get monChoideData;
  @override
  @JsonKey(ignore: true)
  _$$MonchoiceNotifierStateImplCopyWith<_$MonchoiceNotifierStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
