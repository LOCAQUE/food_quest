// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'make_question_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MakeQuestionNotifierState {
  UserData? get currentUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MakeQuestionNotifierStateCopyWith<MakeQuestionNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeQuestionNotifierStateCopyWith<$Res> {
  factory $MakeQuestionNotifierStateCopyWith(MakeQuestionNotifierState value,
          $Res Function(MakeQuestionNotifierState) then) =
      _$MakeQuestionNotifierStateCopyWithImpl<$Res, MakeQuestionNotifierState>;
  @useResult
  $Res call({UserData? currentUser});

  $UserDataCopyWith<$Res>? get currentUser;
}

/// @nodoc
class _$MakeQuestionNotifierStateCopyWithImpl<$Res,
        $Val extends MakeQuestionNotifierState>
    implements $MakeQuestionNotifierStateCopyWith<$Res> {
  _$MakeQuestionNotifierStateCopyWithImpl(this._value, this._then);

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
abstract class _$$MakeQuestionNotifierStateImplCopyWith<$Res>
    implements $MakeQuestionNotifierStateCopyWith<$Res> {
  factory _$$MakeQuestionNotifierStateImplCopyWith(
          _$MakeQuestionNotifierStateImpl value,
          $Res Function(_$MakeQuestionNotifierStateImpl) then) =
      __$$MakeQuestionNotifierStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserData? currentUser});

  @override
  $UserDataCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$MakeQuestionNotifierStateImplCopyWithImpl<$Res>
    extends _$MakeQuestionNotifierStateCopyWithImpl<$Res,
        _$MakeQuestionNotifierStateImpl>
    implements _$$MakeQuestionNotifierStateImplCopyWith<$Res> {
  __$$MakeQuestionNotifierStateImplCopyWithImpl(
      _$MakeQuestionNotifierStateImpl _value,
      $Res Function(_$MakeQuestionNotifierStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
  }) {
    return _then(_$MakeQuestionNotifierStateImpl(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }
}

/// @nodoc

class _$MakeQuestionNotifierStateImpl implements _MakeQuestionNotifierState {
  _$MakeQuestionNotifierStateImpl({this.currentUser});

  @override
  final UserData? currentUser;

  @override
  String toString() {
    return 'MakeQuestionNotifierState(currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeQuestionNotifierStateImpl &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeQuestionNotifierStateImplCopyWith<_$MakeQuestionNotifierStateImpl>
      get copyWith => __$$MakeQuestionNotifierStateImplCopyWithImpl<
          _$MakeQuestionNotifierStateImpl>(this, _$identity);
}

abstract class _MakeQuestionNotifierState implements MakeQuestionNotifierState {
  factory _MakeQuestionNotifierState({final UserData? currentUser}) =
      _$MakeQuestionNotifierStateImpl;

  @override
  UserData? get currentUser;
  @override
  @JsonKey(ignore: true)
  _$$MakeQuestionNotifierStateImplCopyWith<_$MakeQuestionNotifierStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
