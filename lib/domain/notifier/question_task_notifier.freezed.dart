// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_task_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionTaskNotifierState {
  UserData? get currentUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionTaskNotifierStateCopyWith<QuestionTaskNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionTaskNotifierStateCopyWith<$Res> {
  factory $QuestionTaskNotifierStateCopyWith(QuestionTaskNotifierState value,
          $Res Function(QuestionTaskNotifierState) then) =
      _$QuestionTaskNotifierStateCopyWithImpl<$Res, QuestionTaskNotifierState>;
  @useResult
  $Res call({UserData? currentUser});

  $UserDataCopyWith<$Res>? get currentUser;
}

/// @nodoc
class _$QuestionTaskNotifierStateCopyWithImpl<$Res,
        $Val extends QuestionTaskNotifierState>
    implements $QuestionTaskNotifierStateCopyWith<$Res> {
  _$QuestionTaskNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(_value.copyWith(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionTaskNotifierStateImplCopyWith<$Res>
    implements $QuestionTaskNotifierStateCopyWith<$Res> {
  factory _$$QuestionTaskNotifierStateImplCopyWith(
          _$QuestionTaskNotifierStateImpl value,
          $Res Function(_$QuestionTaskNotifierStateImpl) then) =
      __$$QuestionTaskNotifierStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserData? currentUser});

  @override
  $UserDataCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$QuestionTaskNotifierStateImplCopyWithImpl<$Res>
    extends _$QuestionTaskNotifierStateCopyWithImpl<$Res,
        _$QuestionTaskNotifierStateImpl>
    implements _$$QuestionTaskNotifierStateImplCopyWith<$Res> {
  __$$QuestionTaskNotifierStateImplCopyWithImpl(
      _$QuestionTaskNotifierStateImpl _value,
      $Res Function(_$QuestionTaskNotifierStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(_$QuestionTaskNotifierStateImpl(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }
}

/// @nodoc

class _$QuestionTaskNotifierStateImpl implements _QuestionTaskNotifierState {
  _$QuestionTaskNotifierStateImpl({this.currentUser});

  @override
  final UserData? currentUser;

  @override
  String toString() {
    return 'QuestionTaskNotifierState(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionTaskNotifierStateImpl &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionTaskNotifierStateImplCopyWith<_$QuestionTaskNotifierStateImpl>
      get copyWith => __$$QuestionTaskNotifierStateImplCopyWithImpl<
          _$QuestionTaskNotifierStateImpl>(this, _$identity);
}

abstract class _QuestionTaskNotifierState implements QuestionTaskNotifierState {
  factory _QuestionTaskNotifierState({final UserData? currentUser}) =
      _$QuestionTaskNotifierStateImpl;

  @override
  UserData? get currentUser;
  @override
  @JsonKey(ignore: true)
  _$$QuestionTaskNotifierStateImplCopyWith<_$QuestionTaskNotifierStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
