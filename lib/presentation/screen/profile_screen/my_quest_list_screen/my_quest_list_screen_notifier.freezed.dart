// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_quest_list_screen_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyQuestListScreenState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyQuestListScreenStateCopyWith<MyQuestListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyQuestListScreenStateCopyWith<$Res> {
  factory $MyQuestListScreenStateCopyWith(MyQuestListScreenState value,
          $Res Function(MyQuestListScreenState) then) =
      _$MyQuestListScreenStateCopyWithImpl<$Res, MyQuestListScreenState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$MyQuestListScreenStateCopyWithImpl<$Res,
        $Val extends MyQuestListScreenState>
    implements $MyQuestListScreenStateCopyWith<$Res> {
  _$MyQuestListScreenStateCopyWithImpl(this._value, this._then);

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
abstract class _$$MyQuestListScreenStateImplCopyWith<$Res>
    implements $MyQuestListScreenStateCopyWith<$Res> {
  factory _$$MyQuestListScreenStateImplCopyWith(
          _$MyQuestListScreenStateImpl value,
          $Res Function(_$MyQuestListScreenStateImpl) then) =
      __$$MyQuestListScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$MyQuestListScreenStateImplCopyWithImpl<$Res>
    extends _$MyQuestListScreenStateCopyWithImpl<$Res,
        _$MyQuestListScreenStateImpl>
    implements _$$MyQuestListScreenStateImplCopyWith<$Res> {
  __$$MyQuestListScreenStateImplCopyWithImpl(
      _$MyQuestListScreenStateImpl _value,
      $Res Function(_$MyQuestListScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$MyQuestListScreenStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MyQuestListScreenStateImpl implements _MyQuestListScreenState {
  _$MyQuestListScreenStateImpl({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'MyQuestListScreenState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyQuestListScreenStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyQuestListScreenStateImplCopyWith<_$MyQuestListScreenStateImpl>
      get copyWith => __$$MyQuestListScreenStateImplCopyWithImpl<
          _$MyQuestListScreenStateImpl>(this, _$identity);
}

abstract class _MyQuestListScreenState implements MyQuestListScreenState {
  factory _MyQuestListScreenState({final bool isLoading}) =
      _$MyQuestListScreenStateImpl;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$MyQuestListScreenStateImplCopyWith<_$MyQuestListScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
