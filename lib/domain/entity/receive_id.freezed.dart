// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receive_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiveId _$ReceiveIdFromJson(Map<String, dynamic> json) {
  return _ReceiveId.fromJson(json);
}

/// @nodoc
mixin _$ReceiveId {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiveIdCopyWith<ReceiveId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveIdCopyWith<$Res> {
  factory $ReceiveIdCopyWith(ReceiveId value, $Res Function(ReceiveId) then) =
      _$ReceiveIdCopyWithImpl<$Res, ReceiveId>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ReceiveIdCopyWithImpl<$Res, $Val extends ReceiveId>
    implements $ReceiveIdCopyWith<$Res> {
  _$ReceiveIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiveIdImplCopyWith<$Res>
    implements $ReceiveIdCopyWith<$Res> {
  factory _$$ReceiveIdImplCopyWith(
          _$ReceiveIdImpl value, $Res Function(_$ReceiveIdImpl) then) =
      __$$ReceiveIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ReceiveIdImplCopyWithImpl<$Res>
    extends _$ReceiveIdCopyWithImpl<$Res, _$ReceiveIdImpl>
    implements _$$ReceiveIdImplCopyWith<$Res> {
  __$$ReceiveIdImplCopyWithImpl(
      _$ReceiveIdImpl _value, $Res Function(_$ReceiveIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ReceiveIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiveIdImpl extends _ReceiveId {
  const _$ReceiveIdImpl({required this.id}) : super._();

  factory _$ReceiveIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiveIdImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'ReceiveId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveIdImplCopyWith<_$ReceiveIdImpl> get copyWith =>
      __$$ReceiveIdImplCopyWithImpl<_$ReceiveIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiveIdImplToJson(
      this,
    );
  }
}

abstract class _ReceiveId extends ReceiveId {
  const factory _ReceiveId({required final int id}) = _$ReceiveIdImpl;
  const _ReceiveId._() : super._();

  factory _ReceiveId.fromJson(Map<String, dynamic> json) =
      _$ReceiveIdImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$ReceiveIdImplCopyWith<_$ReceiveIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
