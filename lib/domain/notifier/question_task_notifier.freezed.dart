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
  List<QuestionResponse>? get questionList =>
      throw _privateConstructorUsedError;
  List<QuestionResponse>? get myQuestionList =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {List<QuestionResponse>? questionList,
      List<QuestionResponse>? myQuestionList});
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
    Object? questionList = freezed,
    Object? myQuestionList = freezed,
  }) {
    return _then(_value.copyWith(
      questionList: freezed == questionList
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>?,
      myQuestionList: freezed == myQuestionList
          ? _value.myQuestionList
          : myQuestionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>?,
    ) as $Val);
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
  $Res call(
      {List<QuestionResponse>? questionList,
      List<QuestionResponse>? myQuestionList});
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
    Object? questionList = freezed,
    Object? myQuestionList = freezed,
  }) {
    return _then(_$QuestionTaskNotifierStateImpl(
      questionList: freezed == questionList
          ? _value._questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>?,
      myQuestionList: freezed == myQuestionList
          ? _value._myQuestionList
          : myQuestionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>?,
    ));
  }
}

/// @nodoc

class _$QuestionTaskNotifierStateImpl implements _QuestionTaskNotifierState {
  _$QuestionTaskNotifierStateImpl(
      {final List<QuestionResponse>? questionList,
      final List<QuestionResponse>? myQuestionList})
      : _questionList = questionList,
        _myQuestionList = myQuestionList;

  final List<QuestionResponse>? _questionList;
  @override
  List<QuestionResponse>? get questionList {
    final value = _questionList;
    if (value == null) return null;
    if (_questionList is EqualUnmodifiableListView) return _questionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<QuestionResponse>? _myQuestionList;
  @override
  List<QuestionResponse>? get myQuestionList {
    final value = _myQuestionList;
    if (value == null) return null;
    if (_myQuestionList is EqualUnmodifiableListView) return _myQuestionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionTaskNotifierState(questionList: $questionList, myQuestionList: $myQuestionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionTaskNotifierStateImpl &&
            const DeepCollectionEquality()
                .equals(other._questionList, _questionList) &&
            const DeepCollectionEquality()
                .equals(other._myQuestionList, _myQuestionList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_questionList),
      const DeepCollectionEquality().hash(_myQuestionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionTaskNotifierStateImplCopyWith<_$QuestionTaskNotifierStateImpl>
      get copyWith => __$$QuestionTaskNotifierStateImplCopyWithImpl<
          _$QuestionTaskNotifierStateImpl>(this, _$identity);
}

abstract class _QuestionTaskNotifierState implements QuestionTaskNotifierState {
  factory _QuestionTaskNotifierState(
          {final List<QuestionResponse>? questionList,
          final List<QuestionResponse>? myQuestionList}) =
      _$QuestionTaskNotifierStateImpl;

  @override
  List<QuestionResponse>? get questionList;
  @override
  List<QuestionResponse>? get myQuestionList;
  @override
  @JsonKey(ignore: true)
  _$$QuestionTaskNotifierStateImplCopyWith<_$QuestionTaskNotifierStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
