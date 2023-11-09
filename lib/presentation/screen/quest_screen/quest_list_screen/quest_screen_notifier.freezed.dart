// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quest_screen_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestScreenState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestScreenStateCopyWith<QuestScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestScreenStateCopyWith<$Res> {
  factory $QuestScreenStateCopyWith(
          QuestScreenState value, $Res Function(QuestScreenState) then) =
      _$QuestScreenStateCopyWithImpl<$Res, QuestScreenState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$QuestScreenStateCopyWithImpl<$Res, $Val extends QuestScreenState>
    implements $QuestScreenStateCopyWith<$Res> {
  _$QuestScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestScreenStateImplCopyWith<$Res>
    implements $QuestScreenStateCopyWith<$Res> {
  factory _$$QuestScreenStateImplCopyWith(_$QuestScreenStateImpl value,
          $Res Function(_$QuestScreenStateImpl) then) =
      __$$QuestScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$QuestScreenStateImplCopyWithImpl<$Res>
    extends _$QuestScreenStateCopyWithImpl<$Res, _$QuestScreenStateImpl>
    implements _$$QuestScreenStateImplCopyWith<$Res> {
  __$$QuestScreenStateImplCopyWithImpl(_$QuestScreenStateImpl _value,
      $Res Function(_$QuestScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$QuestScreenStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuestScreenStateImpl implements _QuestScreenState {
  _$QuestScreenStateImpl({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'QuestScreenState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestScreenStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestScreenStateImplCopyWith<_$QuestScreenStateImpl> get copyWith =>
      __$$QuestScreenStateImplCopyWithImpl<_$QuestScreenStateImpl>(
          this, _$identity);
}

abstract class _QuestScreenState implements QuestScreenState {
  factory _QuestScreenState({final bool isLoading}) = _$QuestScreenStateImpl;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$QuestScreenStateImplCopyWith<_$QuestScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
