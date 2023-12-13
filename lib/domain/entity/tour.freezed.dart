// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tour _$TourFromJson(Map<String, dynamic> json) {
  return _Tour.fromJson(json);
}

/// @nodoc
mixin _$Tour {
  String get contents => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get budget => throw _privateConstructorUsedError;
  String get prefecture => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  bool? get isRelease => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourCopyWith<Tour> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourCopyWith<$Res> {
  factory $TourCopyWith(Tour value, $Res Function(Tour) then) =
      _$TourCopyWithImpl<$Res, Tour>;
  @useResult
  $Res call(
      {String contents,
      String userId,
      int budget,
      String prefecture,
      String title,
      String? imagePath,
      bool? isRelease});
}

/// @nodoc
class _$TourCopyWithImpl<$Res, $Val extends Tour>
    implements $TourCopyWith<$Res> {
  _$TourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? userId = null,
    Object? budget = null,
    Object? prefecture = null,
    Object? title = null,
    Object? imagePath = freezed,
    Object? isRelease = freezed,
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
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isRelease: freezed == isRelease
          ? _value.isRelease
          : isRelease // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TourImplCopyWith<$Res> implements $TourCopyWith<$Res> {
  factory _$$TourImplCopyWith(
          _$TourImpl value, $Res Function(_$TourImpl) then) =
      __$$TourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contents,
      String userId,
      int budget,
      String prefecture,
      String title,
      String? imagePath,
      bool? isRelease});
}

/// @nodoc
class __$$TourImplCopyWithImpl<$Res>
    extends _$TourCopyWithImpl<$Res, _$TourImpl>
    implements _$$TourImplCopyWith<$Res> {
  __$$TourImplCopyWithImpl(_$TourImpl _value, $Res Function(_$TourImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? userId = null,
    Object? budget = null,
    Object? prefecture = null,
    Object? title = null,
    Object? imagePath = freezed,
    Object? isRelease = freezed,
  }) {
    return _then(_$TourImpl(
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isRelease: freezed == isRelease
          ? _value.isRelease
          : isRelease // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TourImpl extends _Tour {
  const _$TourImpl(
      {required this.contents,
      required this.userId,
      required this.budget,
      required this.prefecture,
      required this.title,
      this.imagePath = '',
      this.isRelease = false})
      : super._();

  factory _$TourImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourImplFromJson(json);

  @override
  final String contents;
  @override
  final String userId;
  @override
  final int budget;
  @override
  final String prefecture;
  @override
  final String title;
  @override
  @JsonKey()
  final String? imagePath;
  @override
  @JsonKey()
  final bool? isRelease;

  @override
  String toString() {
    return 'Tour(contents: $contents, userId: $userId, budget: $budget, prefecture: $prefecture, title: $title, imagePath: $imagePath, isRelease: $isRelease)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourImpl &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.prefecture, prefecture) ||
                other.prefecture == prefecture) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.isRelease, isRelease) ||
                other.isRelease == isRelease));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contents, userId, budget,
      prefecture, title, imagePath, isRelease);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourImplCopyWith<_$TourImpl> get copyWith =>
      __$$TourImplCopyWithImpl<_$TourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourImplToJson(
      this,
    );
  }
}

abstract class _Tour extends Tour {
  const factory _Tour(
      {required final String contents,
      required final String userId,
      required final int budget,
      required final String prefecture,
      required final String title,
      final String? imagePath,
      final bool? isRelease}) = _$TourImpl;
  const _Tour._() : super._();

  factory _Tour.fromJson(Map<String, dynamic> json) = _$TourImpl.fromJson;

  @override
  String get contents;
  @override
  String get userId;
  @override
  int get budget;
  @override
  String get prefecture;
  @override
  String get title;
  @override
  String? get imagePath;
  @override
  bool? get isRelease;
  @override
  @JsonKey(ignore: true)
  _$$TourImplCopyWith<_$TourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TourResponse _$TourResponseFromJson(Map<String, dynamic> json) {
  return _TourResponse.fromJson(json);
}

/// @nodoc
mixin _$TourResponse {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get budget => throw _privateConstructorUsedError;
  String get prefecture => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  bool get isRelease => throw _privateConstructorUsedError;
  UserData? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourResponseCopyWith<TourResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourResponseCopyWith<$Res> {
  factory $TourResponseCopyWith(
          TourResponse value, $Res Function(TourResponse) then) =
      _$TourResponseCopyWithImpl<$Res, TourResponse>;
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      String contents,
      String userId,
      int budget,
      String prefecture,
      String title,
      String imagePath,
      bool isRelease,
      UserData? users});

  $UserDataCopyWith<$Res>? get users;
}

/// @nodoc
class _$TourResponseCopyWithImpl<$Res, $Val extends TourResponse>
    implements $TourResponseCopyWith<$Res> {
  _$TourResponseCopyWithImpl(this._value, this._then);

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
    Object? budget = null,
    Object? prefecture = null,
    Object? title = null,
    Object? imagePath = null,
    Object? isRelease = null,
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
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isRelease: null == isRelease
          ? _value.isRelease
          : isRelease // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$TourResponseImplCopyWith<$Res>
    implements $TourResponseCopyWith<$Res> {
  factory _$$TourResponseImplCopyWith(
          _$TourResponseImpl value, $Res Function(_$TourResponseImpl) then) =
      __$$TourResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      String contents,
      String userId,
      int budget,
      String prefecture,
      String title,
      String imagePath,
      bool isRelease,
      UserData? users});

  @override
  $UserDataCopyWith<$Res>? get users;
}

/// @nodoc
class __$$TourResponseImplCopyWithImpl<$Res>
    extends _$TourResponseCopyWithImpl<$Res, _$TourResponseImpl>
    implements _$$TourResponseImplCopyWith<$Res> {
  __$$TourResponseImplCopyWithImpl(
      _$TourResponseImpl _value, $Res Function(_$TourResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? contents = null,
    Object? userId = null,
    Object? budget = null,
    Object? prefecture = null,
    Object? title = null,
    Object? imagePath = null,
    Object? isRelease = null,
    Object? users = freezed,
  }) {
    return _then(_$TourResponseImpl(
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
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      prefecture: null == prefecture
          ? _value.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isRelease: null == isRelease
          ? _value.isRelease
          : isRelease // ignore: cast_nullable_to_non_nullable
              as bool,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TourResponseImpl extends _TourResponse {
  const _$TourResponseImpl(
      {required this.id,
      required this.createdAt,
      required this.contents,
      required this.userId,
      required this.budget,
      required this.prefecture,
      required this.title,
      this.imagePath = '',
      this.isRelease = false,
      this.users})
      : super._();

  factory _$TourResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourResponseImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final String contents;
  @override
  final String userId;
  @override
  final int budget;
  @override
  final String prefecture;
  @override
  final String title;
  @override
  @JsonKey()
  final String imagePath;
  @override
  @JsonKey()
  final bool isRelease;
  @override
  final UserData? users;

  @override
  String toString() {
    return 'TourResponse(id: $id, createdAt: $createdAt, contents: $contents, userId: $userId, budget: $budget, prefecture: $prefecture, title: $title, imagePath: $imagePath, isRelease: $isRelease, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.prefecture, prefecture) ||
                other.prefecture == prefecture) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.isRelease, isRelease) ||
                other.isRelease == isRelease) &&
            (identical(other.users, users) || other.users == users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, contents, userId,
      budget, prefecture, title, imagePath, isRelease, users);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourResponseImplCopyWith<_$TourResponseImpl> get copyWith =>
      __$$TourResponseImplCopyWithImpl<_$TourResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourResponseImplToJson(
      this,
    );
  }
}

abstract class _TourResponse extends TourResponse {
  const factory _TourResponse(
      {required final int id,
      required final DateTime createdAt,
      required final String contents,
      required final String userId,
      required final int budget,
      required final String prefecture,
      required final String title,
      final String imagePath,
      final bool isRelease,
      final UserData? users}) = _$TourResponseImpl;
  const _TourResponse._() : super._();

  factory _TourResponse.fromJson(Map<String, dynamic> json) =
      _$TourResponseImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get createdAt;
  @override
  String get contents;
  @override
  String get userId;
  @override
  int get budget;
  @override
  String get prefecture;
  @override
  String get title;
  @override
  String get imagePath;
  @override
  bool get isRelease;
  @override
  UserData? get users;
  @override
  @JsonKey(ignore: true)
  _$$TourResponseImplCopyWith<_$TourResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
