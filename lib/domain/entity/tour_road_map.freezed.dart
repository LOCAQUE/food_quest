// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_road_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TourRoadMap _$TourRoadMapFromJson(Map<String, dynamic> json) {
  return _TourRoadMap.fromJson(json);
}

/// @nodoc
mixin _$TourRoadMap {
  int get day => throw _privateConstructorUsedError;
  int get tourId => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get detailId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get longitude => throw _privateConstructorUsedError;
  int? get latitude => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourRoadMapCopyWith<TourRoadMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourRoadMapCopyWith<$Res> {
  factory $TourRoadMapCopyWith(
          TourRoadMap value, $Res Function(TourRoadMap) then) =
      _$TourRoadMapCopyWithImpl<$Res, TourRoadMap>;
  @useResult
  $Res call(
      {int day,
      int tourId,
      String? address,
      String? detailId,
      String? name,
      int? longitude,
      int? latitude,
      String? imagePath});
}

/// @nodoc
class _$TourRoadMapCopyWithImpl<$Res, $Val extends TourRoadMap>
    implements $TourRoadMapCopyWith<$Res> {
  _$TourRoadMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? tourId = null,
    Object? address = freezed,
    Object? detailId = freezed,
    Object? name = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      tourId: null == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      detailId: freezed == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TourRoadMapImplCopyWith<$Res>
    implements $TourRoadMapCopyWith<$Res> {
  factory _$$TourRoadMapImplCopyWith(
          _$TourRoadMapImpl value, $Res Function(_$TourRoadMapImpl) then) =
      __$$TourRoadMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int day,
      int tourId,
      String? address,
      String? detailId,
      String? name,
      int? longitude,
      int? latitude,
      String? imagePath});
}

/// @nodoc
class __$$TourRoadMapImplCopyWithImpl<$Res>
    extends _$TourRoadMapCopyWithImpl<$Res, _$TourRoadMapImpl>
    implements _$$TourRoadMapImplCopyWith<$Res> {
  __$$TourRoadMapImplCopyWithImpl(
      _$TourRoadMapImpl _value, $Res Function(_$TourRoadMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? tourId = null,
    Object? address = freezed,
    Object? detailId = freezed,
    Object? name = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$TourRoadMapImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      tourId: null == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      detailId: freezed == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TourRoadMapImpl extends _TourRoadMap {
  const _$TourRoadMapImpl(
      {required this.day,
      required this.tourId,
      this.address = 'null',
      this.detailId = 'null',
      this.name = 'null',
      this.longitude = 0,
      this.latitude = 0,
      this.imagePath = 'null'})
      : super._();

  factory _$TourRoadMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourRoadMapImplFromJson(json);

  @override
  final int day;
  @override
  final int tourId;
  @override
  @JsonKey()
  final String? address;
  @override
  @JsonKey()
  final String? detailId;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final int? longitude;
  @override
  @JsonKey()
  final int? latitude;
  @override
  @JsonKey()
  final String? imagePath;

  @override
  String toString() {
    return 'TourRoadMap(day: $day, tourId: $tourId, address: $address, detailId: $detailId, name: $name, longitude: $longitude, latitude: $latitude, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourRoadMapImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.detailId, detailId) ||
                other.detailId == detailId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, tourId, address, detailId,
      name, longitude, latitude, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourRoadMapImplCopyWith<_$TourRoadMapImpl> get copyWith =>
      __$$TourRoadMapImplCopyWithImpl<_$TourRoadMapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourRoadMapImplToJson(
      this,
    );
  }
}

abstract class _TourRoadMap extends TourRoadMap {
  const factory _TourRoadMap(
      {required final int day,
      required final int tourId,
      final String? address,
      final String? detailId,
      final String? name,
      final int? longitude,
      final int? latitude,
      final String? imagePath}) = _$TourRoadMapImpl;
  const _TourRoadMap._() : super._();

  factory _TourRoadMap.fromJson(Map<String, dynamic> json) =
      _$TourRoadMapImpl.fromJson;

  @override
  int get day;
  @override
  int get tourId;
  @override
  String? get address;
  @override
  String? get detailId;
  @override
  String? get name;
  @override
  int? get longitude;
  @override
  int? get latitude;
  @override
  String? get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$TourRoadMapImplCopyWith<_$TourRoadMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TourRoadMapResponse _$TourRoadMapResponseFromJson(Map<String, dynamic> json) {
  return _TourRoadMapResponse.fromJson(json);
}

/// @nodoc
mixin _$TourRoadMapResponse {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  int get tourId => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get detailId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get longitude => throw _privateConstructorUsedError;
  int? get latitude => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourRoadMapResponseCopyWith<TourRoadMapResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourRoadMapResponseCopyWith<$Res> {
  factory $TourRoadMapResponseCopyWith(
          TourRoadMapResponse value, $Res Function(TourRoadMapResponse) then) =
      _$TourRoadMapResponseCopyWithImpl<$Res, TourRoadMapResponse>;
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      int day,
      int tourId,
      String? address,
      String? detailId,
      String? name,
      int? longitude,
      int? latitude,
      String? imagePath});
}

/// @nodoc
class _$TourRoadMapResponseCopyWithImpl<$Res, $Val extends TourRoadMapResponse>
    implements $TourRoadMapResponseCopyWith<$Res> {
  _$TourRoadMapResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? day = null,
    Object? tourId = null,
    Object? address = freezed,
    Object? detailId = freezed,
    Object? name = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? imagePath = freezed,
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
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      tourId: null == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      detailId: freezed == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TourRoadMapResponseImplCopyWith<$Res>
    implements $TourRoadMapResponseCopyWith<$Res> {
  factory _$$TourRoadMapResponseImplCopyWith(_$TourRoadMapResponseImpl value,
          $Res Function(_$TourRoadMapResponseImpl) then) =
      __$$TourRoadMapResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      int day,
      int tourId,
      String? address,
      String? detailId,
      String? name,
      int? longitude,
      int? latitude,
      String? imagePath});
}

/// @nodoc
class __$$TourRoadMapResponseImplCopyWithImpl<$Res>
    extends _$TourRoadMapResponseCopyWithImpl<$Res, _$TourRoadMapResponseImpl>
    implements _$$TourRoadMapResponseImplCopyWith<$Res> {
  __$$TourRoadMapResponseImplCopyWithImpl(_$TourRoadMapResponseImpl _value,
      $Res Function(_$TourRoadMapResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? day = null,
    Object? tourId = null,
    Object? address = freezed,
    Object? detailId = freezed,
    Object? name = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$TourRoadMapResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      tourId: null == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as int,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      detailId: freezed == detailId
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TourRoadMapResponseImpl extends _TourRoadMapResponse {
  const _$TourRoadMapResponseImpl(
      {required this.id,
      required this.createdAt,
      required this.day,
      required this.tourId,
      this.address = 'null',
      this.detailId = 'null',
      this.name = 'null',
      this.longitude = 0,
      this.latitude = 0,
      this.imagePath = 'null'})
      : super._();

  factory _$TourRoadMapResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourRoadMapResponseImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final int day;
  @override
  final int tourId;
  @override
  @JsonKey()
  final String? address;
  @override
  @JsonKey()
  final String? detailId;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final int? longitude;
  @override
  @JsonKey()
  final int? latitude;
  @override
  @JsonKey()
  final String? imagePath;

  @override
  String toString() {
    return 'TourRoadMapResponse(id: $id, createdAt: $createdAt, day: $day, tourId: $tourId, address: $address, detailId: $detailId, name: $name, longitude: $longitude, latitude: $latitude, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourRoadMapResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.detailId, detailId) ||
                other.detailId == detailId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, day, tourId,
      address, detailId, name, longitude, latitude, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourRoadMapResponseImplCopyWith<_$TourRoadMapResponseImpl> get copyWith =>
      __$$TourRoadMapResponseImplCopyWithImpl<_$TourRoadMapResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourRoadMapResponseImplToJson(
      this,
    );
  }
}

abstract class _TourRoadMapResponse extends TourRoadMapResponse {
  const factory _TourRoadMapResponse(
      {required final int id,
      required final DateTime createdAt,
      required final int day,
      required final int tourId,
      final String? address,
      final String? detailId,
      final String? name,
      final int? longitude,
      final int? latitude,
      final String? imagePath}) = _$TourRoadMapResponseImpl;
  const _TourRoadMapResponse._() : super._();

  factory _TourRoadMapResponse.fromJson(Map<String, dynamic> json) =
      _$TourRoadMapResponseImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get createdAt;
  @override
  int get day;
  @override
  int get tourId;
  @override
  String? get address;
  @override
  String? get detailId;
  @override
  String? get name;
  @override
  int? get longitude;
  @override
  int? get latitude;
  @override
  String? get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$TourRoadMapResponseImplCopyWith<_$TourRoadMapResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
