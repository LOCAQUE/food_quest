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
  List<QuestionResponse>? get questionList =>
      throw _privateConstructorUsedError;

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
  $Res call({List<QuestionResponse>? questionList});
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
    Object? questionList = freezed,
  }) {
    return _then(_value.copyWith(
      questionList: freezed == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>?,
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
  $Res call({List<QuestionResponse>? questionList});
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
    Object? questionList = freezed,
  }) {
    return _then(_$AnswerNotifierStateImpl(
      questionList: freezed == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>?,
    ));
  }
}

/// @nodoc

class _$AnswerNotifierStateImpl implements _AnswerNotifierState {
  _$AnswerNotifierStateImpl({final List<QuestionResponse>? questionList})
      : _questionList = questionList;

  final List<QuestionResponse>? _questionList;
  @override
  List<QuestionResponse>? get questionList {
    final value = _questionList;
    if (value == null) return null;
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AnswerNotifierState(questionList: $questionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerNotifierStateImpl &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerNotifierStateImplCopyWith<_$AnswerNotifierStateImpl> get copyWith =>
      __$$AnswerNotifierStateImplCopyWithImpl<_$AnswerNotifierStateImpl>(
          this, _$identity);
}

abstract class _AnswerNotifierState implements AnswerNotifierState {
  factory _AnswerNotifierState({final List<QuestionResponse>? questionList}) =
      _$AnswerNotifierStateImpl;

  @override
  List<QuestionResponse>? get questionList;
  @override
  @JsonKey(ignore: true)
  _$$AnswerNotifierStateImplCopyWith<_$AnswerNotifierStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
