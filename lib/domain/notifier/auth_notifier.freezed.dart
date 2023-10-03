// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthNotifierState {
  bool get isLogin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthNotifierStateCopyWith<AuthNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthNotifierStateCopyWith<$Res> {
  factory $AuthNotifierStateCopyWith(
          AuthNotifierState value, $Res Function(AuthNotifierState) then) =
      _$AuthNotifierStateCopyWithImpl<$Res, AuthNotifierState>;
  @useResult
  $Res call({bool isLogin});
}

/// @nodoc
class _$AuthNotifierStateCopyWithImpl<$Res, $Val extends AuthNotifierState>
    implements $AuthNotifierStateCopyWith<$Res> {
  _$AuthNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = null,
  }) {
    return _then(_value.copyWith(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthNotifierStateImplCopyWith<$Res>
    implements $AuthNotifierStateCopyWith<$Res> {
  factory _$$AuthNotifierStateImplCopyWith(_$AuthNotifierStateImpl value,
          $Res Function(_$AuthNotifierStateImpl) then) =
      __$$AuthNotifierStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLogin});
}

/// @nodoc
class __$$AuthNotifierStateImplCopyWithImpl<$Res>
    extends _$AuthNotifierStateCopyWithImpl<$Res, _$AuthNotifierStateImpl>
    implements _$$AuthNotifierStateImplCopyWith<$Res> {
  __$$AuthNotifierStateImplCopyWithImpl(_$AuthNotifierStateImpl _value,
      $Res Function(_$AuthNotifierStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = null,
  }) {
    return _then(_$AuthNotifierStateImpl(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthNotifierStateImpl implements _AuthNotifierState {
  _$AuthNotifierStateImpl({this.isLogin = false});

  @override
  @JsonKey()
  final bool isLogin;

  @override
  String toString() {
    return 'AuthNotifierState(isLogin: $isLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthNotifierStateImpl &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthNotifierStateImplCopyWith<_$AuthNotifierStateImpl> get copyWith =>
      __$$AuthNotifierStateImplCopyWithImpl<_$AuthNotifierStateImpl>(
          this, _$identity);
}

abstract class _AuthNotifierState implements AuthNotifierState {
  factory _AuthNotifierState({final bool isLogin}) = _$AuthNotifierStateImpl;

  @override
  bool get isLogin;
  @override
  @JsonKey(ignore: true)
  _$$AuthNotifierStateImplCopyWith<_$AuthNotifierStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
