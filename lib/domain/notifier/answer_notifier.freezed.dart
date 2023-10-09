// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnswerNotifierState {
  List<ResponseAnswer>? get myAnswerList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnswerNotifierStateCopyWith<AnswerNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerNotifierStateCopyWith<$Res> {
  factory $AnswerNotifierStateCopyWith(
          AnswerNotifierState value, $Res Function(AnswerNotifierState) then) =
      _$AnswerNotifierStateCopyWithImpl<$Res, AnswerNotifierState>;
  @useResult
  $Res call({List<ResponseAnswer>? myAnswerList});
}

/// @nodoc
class _$AnswerNotifierStateCopyWithImpl<$Res, $Val extends AnswerNotifierState>
    implements $AnswerNotifierStateCopyWith<$Res> {
  _$AnswerNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myAnswerList = freezed,
  }) {
    return _then(_value.copyWith(
      myAnswerList: freezed == myAnswerList
          ? _value.myAnswerList
          : myAnswerList // ignore: cast_nullable_to_non_nullable
              as List<ResponseAnswer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerNotifierStateImplCopyWith<$Res>
    implements $AnswerNotifierStateCopyWith<$Res> {
  factory _$$AnswerNotifierStateImplCopyWith(_$AnswerNotifierStateImpl value,
          $Res Function(_$AnswerNotifierStateImpl) then) =
      __$$AnswerNotifierStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResponseAnswer>? myAnswerList});
}

/// @nodoc
class __$$AnswerNotifierStateImplCopyWithImpl<$Res>
    extends _$AnswerNotifierStateCopyWithImpl<$Res, _$AnswerNotifierStateImpl>
    implements _$$AnswerNotifierStateImplCopyWith<$Res> {
  __$$AnswerNotifierStateImplCopyWithImpl(_$AnswerNotifierStateImpl _value,
      $Res Function(_$AnswerNotifierStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myAnswerList = freezed,
  }) {
    return _then(_$AnswerNotifierStateImpl(
      myAnswerList: freezed == myAnswerList
          ? _value._myAnswerList
          : myAnswerList // ignore: cast_nullable_to_non_nullable
              as List<ResponseAnswer>?,
    ));
  }
}

/// @nodoc

class _$AnswerNotifierStateImpl implements _AnswerNotifierState {
  _$AnswerNotifierStateImpl({final List<ResponseAnswer>? myAnswerList})
      : _myAnswerList = myAnswerList;

  final List<ResponseAnswer>? _myAnswerList;
  @override
  List<ResponseAnswer>? get myAnswerList {
    final value = _myAnswerList;
    if (value == null) return null;
    if (_myAnswerList is EqualUnmodifiableListView) return _myAnswerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AnswerNotifierState(myAnswerList: $myAnswerList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerNotifierStateImpl &&
            const DeepCollectionEquality()
                .equals(other._myAnswerList, _myAnswerList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_myAnswerList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerNotifierStateImplCopyWith<_$AnswerNotifierStateImpl> get copyWith =>
      __$$AnswerNotifierStateImplCopyWithImpl<_$AnswerNotifierStateImpl>(
          this, _$identity);
}

abstract class _AnswerNotifierState implements AnswerNotifierState {
  factory _AnswerNotifierState({final List<ResponseAnswer>? myAnswerList}) =
      _$AnswerNotifierStateImpl;

  @override
  List<ResponseAnswer>? get myAnswerList;
  @override
  @JsonKey(ignore: true)
  _$$AnswerNotifierStateImplCopyWith<_$AnswerNotifierStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
