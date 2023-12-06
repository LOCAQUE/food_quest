// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Monster _$MonsterFromJson(Map<String, dynamic> json) {
  return _Monster.fromJson(json);
}

/// @nodoc
mixin _$Monster {
  int get baseMonster => throw _privateConstructorUsedError;
  int get experience => throw _privateConstructorUsedError;
  String get monName => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonsterCopyWith<Monster> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonsterCopyWith<$Res> {
  factory $MonsterCopyWith(Monster value, $Res Function(Monster) then) =
      _$MonsterCopyWithImpl<$Res, Monster>;
  @useResult
  $Res call({int baseMonster, int experience, String monName, String userId});
}

/// @nodoc
class _$MonsterCopyWithImpl<$Res, $Val extends Monster>
    implements $MonsterCopyWith<$Res> {
  _$MonsterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseMonster = null,
    Object? experience = null,
    Object? monName = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      baseMonster: null == baseMonster
          ? _value.baseMonster
          : baseMonster // ignore: cast_nullable_to_non_nullable
              as int,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int,
      monName: null == monName
          ? _value.monName
          : monName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonsterImplCopyWith<$Res> implements $MonsterCopyWith<$Res> {
  factory _$$MonsterImplCopyWith(
          _$MonsterImpl value, $Res Function(_$MonsterImpl) then) =
      __$$MonsterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int baseMonster, int experience, String monName, String userId});
}

/// @nodoc
class __$$MonsterImplCopyWithImpl<$Res>
    extends _$MonsterCopyWithImpl<$Res, _$MonsterImpl>
    implements _$$MonsterImplCopyWith<$Res> {
  __$$MonsterImplCopyWithImpl(
      _$MonsterImpl _value, $Res Function(_$MonsterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseMonster = null,
    Object? experience = null,
    Object? monName = null,
    Object? userId = null,
  }) {
    return _then(_$MonsterImpl(
      baseMonster: null == baseMonster
          ? _value.baseMonster
          : baseMonster // ignore: cast_nullable_to_non_nullable
              as int,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int,
      monName: null == monName
          ? _value.monName
          : monName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonsterImpl implements _Monster {
  const _$MonsterImpl(
      {required this.baseMonster,
      required this.experience,
      required this.monName,
      required this.userId});

  factory _$MonsterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonsterImplFromJson(json);

  @override
  final int baseMonster;
  @override
  final int experience;
  @override
  final String monName;
  @override
  final String userId;

  @override
  String toString() {
    return 'Monster(baseMonster: $baseMonster, experience: $experience, monName: $monName, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonsterImpl &&
            (identical(other.baseMonster, baseMonster) ||
                other.baseMonster == baseMonster) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.monName, monName) || other.monName == monName) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, baseMonster, experience, monName, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonsterImplCopyWith<_$MonsterImpl> get copyWith =>
      __$$MonsterImplCopyWithImpl<_$MonsterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonsterImplToJson(
      this,
    );
  }
}

abstract class _Monster implements Monster {
  const factory _Monster(
      {required final int baseMonster,
      required final int experience,
      required final String monName,
      required final String userId}) = _$MonsterImpl;

  factory _Monster.fromJson(Map<String, dynamic> json) = _$MonsterImpl.fromJson;

  @override
  int get baseMonster;
  @override
  int get experience;
  @override
  String get monName;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$MonsterImplCopyWith<_$MonsterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponceMonster _$ResponceMonsterFromJson(Map<String, dynamic> json) {
  return _ResponceMonster.fromJson(json);
}

/// @nodoc
mixin _$ResponceMonster {
  int get baseResponceMonster => throw _privateConstructorUsedError;
  int get experience => throw _privateConstructorUsedError;
  String get monName => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponceMonsterCopyWith<ResponceMonster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponceMonsterCopyWith<$Res> {
  factory $ResponceMonsterCopyWith(
          ResponceMonster value, $Res Function(ResponceMonster) then) =
      _$ResponceMonsterCopyWithImpl<$Res, ResponceMonster>;
  @useResult
  $Res call(
      {int baseResponceMonster,
      int experience,
      String monName,
      String userId,
      int? id,
      DateTime? createdAt});
}

/// @nodoc
class _$ResponceMonsterCopyWithImpl<$Res, $Val extends ResponceMonster>
    implements $ResponceMonsterCopyWith<$Res> {
  _$ResponceMonsterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseResponceMonster = null,
    Object? experience = null,
    Object? monName = null,
    Object? userId = null,
    Object? id = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      baseResponceMonster: null == baseResponceMonster
          ? _value.baseResponceMonster
          : baseResponceMonster // ignore: cast_nullable_to_non_nullable
              as int,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int,
      monName: null == monName
          ? _value.monName
          : monName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponceMonsterImplCopyWith<$Res>
    implements $ResponceMonsterCopyWith<$Res> {
  factory _$$ResponceMonsterImplCopyWith(_$ResponceMonsterImpl value,
          $Res Function(_$ResponceMonsterImpl) then) =
      __$$ResponceMonsterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int baseResponceMonster,
      int experience,
      String monName,
      String userId,
      int? id,
      DateTime? createdAt});
}

/// @nodoc
class __$$ResponceMonsterImplCopyWithImpl<$Res>
    extends _$ResponceMonsterCopyWithImpl<$Res, _$ResponceMonsterImpl>
    implements _$$ResponceMonsterImplCopyWith<$Res> {
  __$$ResponceMonsterImplCopyWithImpl(
      _$ResponceMonsterImpl _value, $Res Function(_$ResponceMonsterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseResponceMonster = null,
    Object? experience = null,
    Object? monName = null,
    Object? userId = null,
    Object? id = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ResponceMonsterImpl(
      baseResponceMonster: null == baseResponceMonster
          ? _value.baseResponceMonster
          : baseResponceMonster // ignore: cast_nullable_to_non_nullable
              as int,
      experience: null == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as int,
      monName: null == monName
          ? _value.monName
          : monName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponceMonsterImpl implements _ResponceMonster {
  const _$ResponceMonsterImpl(
      {required this.baseResponceMonster,
      required this.experience,
      required this.monName,
      required this.userId,
      this.id,
      this.createdAt});

  factory _$ResponceMonsterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponceMonsterImplFromJson(json);

  @override
  final int baseResponceMonster;
  @override
  final int experience;
  @override
  final String monName;
  @override
  final String userId;
  @override
  final int? id;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ResponceMonster(baseResponceMonster: $baseResponceMonster, experience: $experience, monName: $monName, userId: $userId, id: $id, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponceMonsterImpl &&
            (identical(other.baseResponceMonster, baseResponceMonster) ||
                other.baseResponceMonster == baseResponceMonster) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.monName, monName) || other.monName == monName) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseResponceMonster, experience,
      monName, userId, id, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponceMonsterImplCopyWith<_$ResponceMonsterImpl> get copyWith =>
      __$$ResponceMonsterImplCopyWithImpl<_$ResponceMonsterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponceMonsterImplToJson(
      this,
    );
  }
}

abstract class _ResponceMonster implements ResponceMonster {
  const factory _ResponceMonster(
      {required final int baseResponceMonster,
      required final int experience,
      required final String monName,
      required final String userId,
      final int? id,
      final DateTime? createdAt}) = _$ResponceMonsterImpl;

  factory _ResponceMonster.fromJson(Map<String, dynamic> json) =
      _$ResponceMonsterImpl.fromJson;

  @override
  int get baseResponceMonster;
  @override
  int get experience;
  @override
  String get monName;
  @override
  String get userId;
  @override
  int? get id;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ResponceMonsterImplCopyWith<_$ResponceMonsterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
