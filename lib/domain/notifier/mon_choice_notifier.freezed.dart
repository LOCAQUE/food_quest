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
mixin _$AddmonsterNotifierState {
  UserData? get currentUser => throw _privateConstructorUsedError;
  String? get currentUserId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddmonsterNotifierStateCopyWith<AddmonsterNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddmonsterNotifierStateCopyWith<$Res> {
  factory $AddmonsterNotifierStateCopyWith(AddmonsterNotifierState value,
          $Res Function(AddmonsterNotifierState) then) =
      _$AddmonsterNotifierStateCopyWithImpl<$Res, AddmonsterNotifierState>;
  @useResult
  $Res call({UserData? currentUser, String? currentUserId});

  $UserDataCopyWith<$Res>? get currentUser;
}

/// @nodoc
class _$AddmonsterNotifierStateCopyWithImpl<$Res,
        $Val extends AddmonsterNotifierState>
    implements $AddmonsterNotifierStateCopyWith<$Res> {
  _$AddmonsterNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
    Object? currentUserId = freezed,
  }) {
    return _then(_value.copyWith(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserData?,
      currentUserId: freezed == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$AddmonsterNotifierStateImplCopyWith<$Res>
    implements $AddmonsterNotifierStateCopyWith<$Res> {
  factory _$$AddmonsterNotifierStateImplCopyWith(
          _$AddmonsterNotifierStateImpl value,
          $Res Function(_$AddmonsterNotifierStateImpl) then) =
      __$$AddmonsterNotifierStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserData? currentUser, String? currentUserId});

  @override
  $UserDataCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$AddmonsterNotifierStateImplCopyWithImpl<$Res>
    extends _$AddmonsterNotifierStateCopyWithImpl<$Res,
        _$AddmonsterNotifierStateImpl>
    implements _$$AddmonsterNotifierStateImplCopyWith<$Res> {
  __$$AddmonsterNotifierStateImplCopyWithImpl(
      _$AddmonsterNotifierStateImpl _value,
      $Res Function(_$AddmonsterNotifierStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
    Object? currentUserId = freezed,
  }) {
    return _then(_$AddmonsterNotifierStateImpl(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as UserData?,
      currentUserId: freezed == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddmonsterNotifierStateImpl implements _AddmonsterNotifierState {
  _$AddmonsterNotifierStateImpl({this.currentUser, this.currentUserId});

  @override
  final UserData? currentUser;
  @override
  final String? currentUserId;

  @override
  String toString() {
    return 'AddmonsterNotifierState(currentUser: $currentUser, currentUserId: $currentUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddmonsterNotifierStateImpl &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUser, currentUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddmonsterNotifierStateImplCopyWith<_$AddmonsterNotifierStateImpl>
      get copyWith => __$$AddmonsterNotifierStateImplCopyWithImpl<
          _$AddmonsterNotifierStateImpl>(this, _$identity);
}

abstract class _AddmonsterNotifierState implements AddmonsterNotifierState {
  factory _AddmonsterNotifierState(
      {final UserData? currentUser,
      final String? currentUserId}) = _$AddmonsterNotifierStateImpl;

  @override
  UserData? get currentUser;
  @override
  String? get currentUserId;
  @override
  @JsonKey(ignore: true)
  _$$AddmonsterNotifierStateImplCopyWith<_$AddmonsterNotifierStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
