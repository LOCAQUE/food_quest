// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asked_list_screen_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AskedListScreenState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AskedListScreenStateCopyWith<AskedListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskedListScreenStateCopyWith<$Res> {
  factory $AskedListScreenStateCopyWith(AskedListScreenState value,
          $Res Function(AskedListScreenState) then) =
      _$AskedListScreenStateCopyWithImpl<$Res, AskedListScreenState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$AskedListScreenStateCopyWithImpl<$Res,
        $Val extends AskedListScreenState>
    implements $AskedListScreenStateCopyWith<$Res> {
  _$AskedListScreenStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AskedListScreenStateImplCopyWith<$Res>
    implements $AskedListScreenStateCopyWith<$Res> {
  factory _$$AskedListScreenStateImplCopyWith(_$AskedListScreenStateImpl value,
          $Res Function(_$AskedListScreenStateImpl) then) =
      __$$AskedListScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$AskedListScreenStateImplCopyWithImpl<$Res>
    extends _$AskedListScreenStateCopyWithImpl<$Res, _$AskedListScreenStateImpl>
    implements _$$AskedListScreenStateImplCopyWith<$Res> {
  __$$AskedListScreenStateImplCopyWithImpl(_$AskedListScreenStateImpl _value,
      $Res Function(_$AskedListScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$AskedListScreenStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AskedListScreenStateImpl implements _AskedListScreenState {
  _$AskedListScreenStateImpl({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AskedListScreenState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskedListScreenStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskedListScreenStateImplCopyWith<_$AskedListScreenStateImpl>
      get copyWith =>
          __$$AskedListScreenStateImplCopyWithImpl<_$AskedListScreenStateImpl>(
              this, _$identity);
}

abstract class _AskedListScreenState implements AskedListScreenState {
  factory _AskedListScreenState({final bool isLoading}) =
      _$AskedListScreenStateImpl;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$AskedListScreenStateImplCopyWith<_$AskedListScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
