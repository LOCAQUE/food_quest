// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  String get contents => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get minimumBudget => throw _privateConstructorUsedError;
  int get maximumBudget => throw _privateConstructorUsedError;
  DateTime get deadLine => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {String contents,
      String userId,
      int minimumBudget,
      int maximumBudget,
      DateTime deadLine});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? userId = null,
    Object? minimumBudget = null,
    Object? maximumBudget = null,
    Object? deadLine = null,
  }) {
    return _then(_value.copyWith(
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      minimumBudget: null == minimumBudget
          ? _value.minimumBudget
          : minimumBudget // ignore: cast_nullable_to_non_nullable
              as int,
      maximumBudget: null == maximumBudget
          ? _value.maximumBudget
          : maximumBudget // ignore: cast_nullable_to_non_nullable
              as int,
      deadLine: null == deadLine
          ? _value.deadLine
          : deadLine // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contents,
      String userId,
      int minimumBudget,
      int maximumBudget,
      DateTime deadLine});
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? userId = null,
    Object? minimumBudget = null,
    Object? maximumBudget = null,
    Object? deadLine = null,
  }) {
    return _then(_$QuestionImpl(
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      minimumBudget: null == minimumBudget
          ? _value.minimumBudget
          : minimumBudget // ignore: cast_nullable_to_non_nullable
              as int,
      maximumBudget: null == maximumBudget
          ? _value.maximumBudget
          : maximumBudget // ignore: cast_nullable_to_non_nullable
              as int,
      deadLine: null == deadLine
          ? _value.deadLine
          : deadLine // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl extends _Question {
  const _$QuestionImpl(
      {required this.contents,
      required this.userId,
      required this.minimumBudget,
      required this.maximumBudget,
      required this.deadLine})
      : super._();

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  final String contents;
  @override
  final String userId;
  @override
  final int minimumBudget;
  @override
  final int maximumBudget;
  @override
  final DateTime deadLine;

  @override
  String toString() {
    return 'Question(contents: $contents, userId: $userId, minimumBudget: $minimumBudget, maximumBudget: $maximumBudget, deadLine: $deadLine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.minimumBudget, minimumBudget) ||
                other.minimumBudget == minimumBudget) &&
            (identical(other.maximumBudget, maximumBudget) ||
                other.maximumBudget == maximumBudget) &&
            (identical(other.deadLine, deadLine) ||
                other.deadLine == deadLine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, contents, userId, minimumBudget, maximumBudget, deadLine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question extends Question {
  const factory _Question(
      {required final String contents,
      required final String userId,
      required final int minimumBudget,
      required final int maximumBudget,
      required final DateTime deadLine}) = _$QuestionImpl;
  const _Question._() : super._();

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  String get contents;
  @override
  String get userId;
  @override
  int get minimumBudget;
  @override
  int get maximumBudget;
  @override
  DateTime get deadLine;
  @override
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionResponse _$QuestionResponseFromJson(Map<String, dynamic> json) {
  return _QuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestionResponse {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get minimumBudget => throw _privateConstructorUsedError;
  int get maximumBudget => throw _privateConstructorUsedError;
  DateTime get deadLine => throw _privateConstructorUsedError;
  UserData? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionResponseCopyWith<QuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResponseCopyWith<$Res> {
  factory $QuestionResponseCopyWith(
          QuestionResponse value, $Res Function(QuestionResponse) then) =
      _$QuestionResponseCopyWithImpl<$Res, QuestionResponse>;
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      String contents,
      String userId,
      int minimumBudget,
      int maximumBudget,
      DateTime deadLine,
      UserData? users});

  $UserDataCopyWith<$Res>? get users;
}

/// @nodoc
class _$QuestionResponseCopyWithImpl<$Res, $Val extends QuestionResponse>
    implements $QuestionResponseCopyWith<$Res> {
  _$QuestionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? contents = null,
    Object? userId = null,
    Object? minimumBudget = null,
    Object? maximumBudget = null,
    Object? deadLine = null,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      minimumBudget: null == minimumBudget
          ? _value.minimumBudget
          : minimumBudget // ignore: cast_nullable_to_non_nullable
              as int,
      maximumBudget: null == maximumBudget
          ? _value.maximumBudget
          : maximumBudget // ignore: cast_nullable_to_non_nullable
              as int,
      deadLine: null == deadLine
          ? _value.deadLine
          : deadLine // ignore: cast_nullable_to_non_nullable
              as DateTime,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get users {
    if (_value.users == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.users!, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionResponseImplCopyWith<$Res>
    implements $QuestionResponseCopyWith<$Res> {
  factory _$$QuestionResponseImplCopyWith(_$QuestionResponseImpl value,
          $Res Function(_$QuestionResponseImpl) then) =
      __$$QuestionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      String contents,
      String userId,
      int minimumBudget,
      int maximumBudget,
      DateTime deadLine,
      UserData? users});

  @override
  $UserDataCopyWith<$Res>? get users;
}

/// @nodoc
class __$$QuestionResponseImplCopyWithImpl<$Res>
    extends _$QuestionResponseCopyWithImpl<$Res, _$QuestionResponseImpl>
    implements _$$QuestionResponseImplCopyWith<$Res> {
  __$$QuestionResponseImplCopyWithImpl(_$QuestionResponseImpl _value,
      $Res Function(_$QuestionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? contents = null,
    Object? userId = null,
    Object? minimumBudget = null,
    Object? maximumBudget = null,
    Object? deadLine = null,
    Object? users = freezed,
  }) {
    return _then(_$QuestionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      minimumBudget: null == minimumBudget
          ? _value.minimumBudget
          : minimumBudget // ignore: cast_nullable_to_non_nullable
              as int,
      maximumBudget: null == maximumBudget
          ? _value.maximumBudget
          : maximumBudget // ignore: cast_nullable_to_non_nullable
              as int,
      deadLine: null == deadLine
          ? _value.deadLine
          : deadLine // ignore: cast_nullable_to_non_nullable
              as DateTime,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionResponseImpl extends _QuestionResponse {
  const _$QuestionResponseImpl(
      {required this.id,
      required this.createdAt,
      required this.contents,
      required this.userId,
      required this.minimumBudget,
      required this.maximumBudget,
      required this.deadLine,
      this.users})
      : super._();

  factory _$QuestionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionResponseImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final String contents;
  @override
  final String userId;
  @override
  final int minimumBudget;
  @override
  final int maximumBudget;
  @override
  final DateTime deadLine;
  @override
  final UserData? users;

  @override
  String toString() {
    return 'QuestionResponse(id: $id, createdAt: $createdAt, contents: $contents, userId: $userId, minimumBudget: $minimumBudget, maximumBudget: $maximumBudget, deadLine: $deadLine, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.minimumBudget, minimumBudget) ||
                other.minimumBudget == minimumBudget) &&
            (identical(other.maximumBudget, maximumBudget) ||
                other.maximumBudget == maximumBudget) &&
            (identical(other.deadLine, deadLine) ||
                other.deadLine == deadLine) &&
            (identical(other.users, users) || other.users == users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, contents, userId,
      minimumBudget, maximumBudget, deadLine, users);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionResponseImplCopyWith<_$QuestionResponseImpl> get copyWith =>
      __$$QuestionResponseImplCopyWithImpl<_$QuestionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionResponseImplToJson(
      this,
    );
  }
}

abstract class _QuestionResponse extends QuestionResponse {
  const factory _QuestionResponse(
      {required final int id,
      required final DateTime createdAt,
      required final String contents,
      required final String userId,
      required final int minimumBudget,
      required final int maximumBudget,
      required final DateTime deadLine,
      final UserData? users}) = _$QuestionResponseImpl;
  const _QuestionResponse._() : super._();

  factory _QuestionResponse.fromJson(Map<String, dynamic> json) =
      _$QuestionResponseImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get createdAt;
  @override
  String get contents;
  @override
  String get userId;
  @override
  int get minimumBudget;
  @override
  int get maximumBudget;
  @override
  DateTime get deadLine;
  @override
  UserData? get users;
  @override
  @JsonKey(ignore: true)
  _$$QuestionResponseImplCopyWith<_$QuestionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
