// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get questId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  bool get bestAnswer => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get minimumBudget => throw _privateConstructorUsedError;
  int get maximumBudget => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call(
      {int id,
      String content,
      int questId,
      String uid,
      bool bestAnswer,
      DateTime createdAt,
      int minimumBudget,
      int maximumBudget});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res, $Val extends Answer>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? questId = null,
    Object? uid = null,
    Object? bestAnswer = null,
    Object? createdAt = null,
    Object? minimumBudget = null,
    Object? maximumBudget = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      bestAnswer: null == bestAnswer
          ? _value.bestAnswer
          : bestAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minimumBudget: null == minimumBudget
          ? _value.minimumBudget
          : minimumBudget // ignore: cast_nullable_to_non_nullable
              as int,
      maximumBudget: null == maximumBudget
          ? _value.maximumBudget
          : maximumBudget // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerImplCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$AnswerImplCopyWith(
          _$AnswerImpl value, $Res Function(_$AnswerImpl) then) =
      __$$AnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String content,
      int questId,
      String uid,
      bool bestAnswer,
      DateTime createdAt,
      int minimumBudget,
      int maximumBudget});
}

/// @nodoc
class __$$AnswerImplCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$AnswerImpl>
    implements _$$AnswerImplCopyWith<$Res> {
  __$$AnswerImplCopyWithImpl(
      _$AnswerImpl _value, $Res Function(_$AnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? questId = null,
    Object? uid = null,
    Object? bestAnswer = null,
    Object? createdAt = null,
    Object? minimumBudget = null,
    Object? maximumBudget = null,
  }) {
    return _then(_$AnswerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      bestAnswer: null == bestAnswer
          ? _value.bestAnswer
          : bestAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minimumBudget: null == minimumBudget
          ? _value.minimumBudget
          : minimumBudget // ignore: cast_nullable_to_non_nullable
              as int,
      maximumBudget: null == maximumBudget
          ? _value.maximumBudget
          : maximumBudget // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerImpl extends _Answer {
  const _$AnswerImpl(
      {required this.id,
      required this.content,
      required this.questId,
      required this.uid,
      required this.bestAnswer,
      required this.createdAt,
      required this.minimumBudget,
      required this.maximumBudget})
      : super._();

  factory _$AnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerImplFromJson(json);

  @override
  final int id;
  @override
  final String content;
  @override
  final int questId;
  @override
  final String uid;
  @override
  final bool bestAnswer;
  @override
  final DateTime createdAt;
  @override
  final int minimumBudget;
  @override
  final int maximumBudget;

  @override
  String toString() {
    return 'Answer(id: $id, content: $content, questId: $questId, uid: $uid, bestAnswer: $bestAnswer, createdAt: $createdAt, minimumBudget: $minimumBudget, maximumBudget: $maximumBudget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.questId, questId) || other.questId == questId) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.bestAnswer, bestAnswer) ||
                other.bestAnswer == bestAnswer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.minimumBudget, minimumBudget) ||
                other.minimumBudget == minimumBudget) &&
            (identical(other.maximumBudget, maximumBudget) ||
                other.maximumBudget == maximumBudget));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, questId, uid,
      bestAnswer, createdAt, minimumBudget, maximumBudget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      __$$AnswerImplCopyWithImpl<_$AnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerImplToJson(
      this,
    );
  }
}

abstract class _Answer extends Answer {
  const factory _Answer(
      {required final int id,
      required final String content,
      required final int questId,
      required final String uid,
      required final bool bestAnswer,
      required final DateTime createdAt,
      required final int minimumBudget,
      required final int maximumBudget}) = _$AnswerImpl;
  const _Answer._() : super._();

  factory _Answer.fromJson(Map<String, dynamic> json) = _$AnswerImpl.fromJson;

  @override
  int get id;
  @override
  String get content;
  @override
  int get questId;
  @override
  String get uid;
  @override
  bool get bestAnswer;
  @override
  DateTime get createdAt;
  @override
  int get minimumBudget;
  @override
  int get maximumBudget;
  @override
  @JsonKey(ignore: true)
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendAnswer _$SendAnswerFromJson(Map<String, dynamic> json) {
  return _SendAnswer.fromJson(json);
}

/// @nodoc
mixin _$SendAnswer {
  String get content => throw _privateConstructorUsedError;
  int get questId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  bool get bestAnswer => throw _privateConstructorUsedError;
  int get minimumBudget => throw _privateConstructorUsedError;
  int get maximumBudget => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendAnswerCopyWith<SendAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendAnswerCopyWith<$Res> {
  factory $SendAnswerCopyWith(
          SendAnswer value, $Res Function(SendAnswer) then) =
      _$SendAnswerCopyWithImpl<$Res, SendAnswer>;
  @useResult
  $Res call(
      {String content,
      int questId,
      String uid,
      bool bestAnswer,
      int minimumBudget,
      int maximumBudget});
}

/// @nodoc
class _$SendAnswerCopyWithImpl<$Res, $Val extends SendAnswer>
    implements $SendAnswerCopyWith<$Res> {
  _$SendAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? questId = null,
    Object? uid = null,
    Object? bestAnswer = null,
    Object? minimumBudget = null,
    Object? maximumBudget = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      bestAnswer: null == bestAnswer
          ? _value.bestAnswer
          : bestAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
      minimumBudget: null == minimumBudget
          ? _value.minimumBudget
          : minimumBudget // ignore: cast_nullable_to_non_nullable
              as int,
      maximumBudget: null == maximumBudget
          ? _value.maximumBudget
          : maximumBudget // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendAnswerImplCopyWith<$Res>
    implements $SendAnswerCopyWith<$Res> {
  factory _$$SendAnswerImplCopyWith(
          _$SendAnswerImpl value, $Res Function(_$SendAnswerImpl) then) =
      __$$SendAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      int questId,
      String uid,
      bool bestAnswer,
      int minimumBudget,
      int maximumBudget});
}

/// @nodoc
class __$$SendAnswerImplCopyWithImpl<$Res>
    extends _$SendAnswerCopyWithImpl<$Res, _$SendAnswerImpl>
    implements _$$SendAnswerImplCopyWith<$Res> {
  __$$SendAnswerImplCopyWithImpl(
      _$SendAnswerImpl _value, $Res Function(_$SendAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? questId = null,
    Object? uid = null,
    Object? bestAnswer = null,
    Object? minimumBudget = null,
    Object? maximumBudget = null,
  }) {
    return _then(_$SendAnswerImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      bestAnswer: null == bestAnswer
          ? _value.bestAnswer
          : bestAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
      minimumBudget: null == minimumBudget
          ? _value.minimumBudget
          : minimumBudget // ignore: cast_nullable_to_non_nullable
              as int,
      maximumBudget: null == maximumBudget
          ? _value.maximumBudget
          : maximumBudget // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendAnswerImpl extends _SendAnswer {
  const _$SendAnswerImpl(
      {required this.content,
      required this.questId,
      required this.uid,
      required this.bestAnswer,
      required this.minimumBudget,
      required this.maximumBudget})
      : super._();

  factory _$SendAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendAnswerImplFromJson(json);

  @override
  final String content;
  @override
  final int questId;
  @override
  final String uid;
  @override
  final bool bestAnswer;
  @override
  final int minimumBudget;
  @override
  final int maximumBudget;

  @override
  String toString() {
    return 'SendAnswer(content: $content, questId: $questId, uid: $uid, bestAnswer: $bestAnswer, minimumBudget: $minimumBudget, maximumBudget: $maximumBudget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendAnswerImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.questId, questId) || other.questId == questId) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.bestAnswer, bestAnswer) ||
                other.bestAnswer == bestAnswer) &&
            (identical(other.minimumBudget, minimumBudget) ||
                other.minimumBudget == minimumBudget) &&
            (identical(other.maximumBudget, maximumBudget) ||
                other.maximumBudget == maximumBudget));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, questId, uid,
      bestAnswer, minimumBudget, maximumBudget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendAnswerImplCopyWith<_$SendAnswerImpl> get copyWith =>
      __$$SendAnswerImplCopyWithImpl<_$SendAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendAnswerImplToJson(
      this,
    );
  }
}

abstract class _SendAnswer extends SendAnswer {
  const factory _SendAnswer(
      {required final String content,
      required final int questId,
      required final String uid,
      required final bool bestAnswer,
      required final int minimumBudget,
      required final int maximumBudget}) = _$SendAnswerImpl;
  const _SendAnswer._() : super._();

  factory _SendAnswer.fromJson(Map<String, dynamic> json) =
      _$SendAnswerImpl.fromJson;

  @override
  String get content;
  @override
  int get questId;
  @override
  String get uid;
  @override
  bool get bestAnswer;
  @override
  int get minimumBudget;
  @override
  int get maximumBudget;
  @override
  @JsonKey(ignore: true)
  _$$SendAnswerImplCopyWith<_$SendAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
