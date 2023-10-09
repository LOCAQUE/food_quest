// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mon_choice_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonChoiceData _$MonChoiceDataFromJson(Map<String, dynamic> json) {
  return _MonChoiceData.fromJson(json);
}

/// @nodoc
mixin _$MonChoiceData {
  int get baseMonster => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonChoiceDataCopyWith<MonChoiceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonChoiceDataCopyWith<$Res> {
  factory $MonChoiceDataCopyWith(
          MonChoiceData value, $Res Function(MonChoiceData) then) =
      _$MonChoiceDataCopyWithImpl<$Res, MonChoiceData>;
  @useResult
  $Res call({int baseMonster});
}

/// @nodoc
class _$MonChoiceDataCopyWithImpl<$Res, $Val extends MonChoiceData>
    implements $MonChoiceDataCopyWith<$Res> {
  _$MonChoiceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseMonster = null,
  }) {
    return _then(_value.copyWith(
      baseMonster: null == baseMonster
          ? _value.baseMonster
          : baseMonster // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonChoiceDataImplCopyWith<$Res>
    implements $MonChoiceDataCopyWith<$Res> {
  factory _$$MonChoiceDataImplCopyWith(
          _$MonChoiceDataImpl value, $Res Function(_$MonChoiceDataImpl) then) =
      __$$MonChoiceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int baseMonster});
}

/// @nodoc
class __$$MonChoiceDataImplCopyWithImpl<$Res>
    extends _$MonChoiceDataCopyWithImpl<$Res, _$MonChoiceDataImpl>
    implements _$$MonChoiceDataImplCopyWith<$Res> {
  __$$MonChoiceDataImplCopyWithImpl(
      _$MonChoiceDataImpl _value, $Res Function(_$MonChoiceDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseMonster = null,
  }) {
    return _then(_$MonChoiceDataImpl(
      baseMonster: null == baseMonster
          ? _value.baseMonster
          : baseMonster // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonChoiceDataImpl implements _MonChoiceData {
  const _$MonChoiceDataImpl({required this.baseMonster});

  factory _$MonChoiceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonChoiceDataImplFromJson(json);

  @override
  final int baseMonster;

  @override
  String toString() {
    return 'MonChoiceData(baseMonster: $baseMonster)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonChoiceDataImpl &&
            (identical(other.baseMonster, baseMonster) ||
                other.baseMonster == baseMonster));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseMonster);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonChoiceDataImplCopyWith<_$MonChoiceDataImpl> get copyWith =>
      __$$MonChoiceDataImplCopyWithImpl<_$MonChoiceDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonChoiceDataImplToJson(
      this,
    );
  }
}

abstract class _MonChoiceData implements MonChoiceData {
  const factory _MonChoiceData({required final int baseMonster}) =
      _$MonChoiceDataImpl;

  factory _MonChoiceData.fromJson(Map<String, dynamic> json) =
      _$MonChoiceDataImpl.fromJson;

  @override
  int get baseMonster;
  @override
  @JsonKey(ignore: true)
  _$$MonChoiceDataImplCopyWith<_$MonChoiceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
