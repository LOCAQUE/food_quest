// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quest_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestImage _$QuestImageFromJson(Map<String, dynamic> json) {
  return _QuestImage.fromJson(json);
}

/// @nodoc
mixin _$QuestImage {
  int get questId => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestImageCopyWith<QuestImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestImageCopyWith<$Res> {
  factory $QuestImageCopyWith(
          QuestImage value, $Res Function(QuestImage) then) =
      _$QuestImageCopyWithImpl<$Res, QuestImage>;
  @useResult
  $Res call({int questId, String imageUrl});
}

/// @nodoc
class _$QuestImageCopyWithImpl<$Res, $Val extends QuestImage>
    implements $QuestImageCopyWith<$Res> {
  _$QuestImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questId = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestImageImplCopyWith<$Res>
    implements $QuestImageCopyWith<$Res> {
  factory _$$QuestImageImplCopyWith(
          _$QuestImageImpl value, $Res Function(_$QuestImageImpl) then) =
      __$$QuestImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int questId, String imageUrl});
}

/// @nodoc
class __$$QuestImageImplCopyWithImpl<$Res>
    extends _$QuestImageCopyWithImpl<$Res, _$QuestImageImpl>
    implements _$$QuestImageImplCopyWith<$Res> {
  __$$QuestImageImplCopyWithImpl(
      _$QuestImageImpl _value, $Res Function(_$QuestImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questId = null,
    Object? imageUrl = null,
  }) {
    return _then(_$QuestImageImpl(
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestImageImpl extends _QuestImage {
  const _$QuestImageImpl({required this.questId, required this.imageUrl})
      : super._();

  factory _$QuestImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestImageImplFromJson(json);

  @override
  final int questId;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'QuestImage(questId: $questId, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestImageImpl &&
            (identical(other.questId, questId) || other.questId == questId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questId, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestImageImplCopyWith<_$QuestImageImpl> get copyWith =>
      __$$QuestImageImplCopyWithImpl<_$QuestImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestImageImplToJson(
      this,
    );
  }
}

abstract class _QuestImage extends QuestImage {
  const factory _QuestImage(
      {required final int questId,
      required final String imageUrl}) = _$QuestImageImpl;
  const _QuestImage._() : super._();

  factory _QuestImage.fromJson(Map<String, dynamic> json) =
      _$QuestImageImpl.fromJson;

  @override
  int get questId;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$QuestImageImplCopyWith<_$QuestImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestImageResponse _$QuestImageResponseFromJson(Map<String, dynamic> json) {
  return _QuestImageResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestImageResponse {
  int get id => throw _privateConstructorUsedError;
  int get questId => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestImageResponseCopyWith<QuestImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestImageResponseCopyWith<$Res> {
  factory $QuestImageResponseCopyWith(
          QuestImageResponse value, $Res Function(QuestImageResponse) then) =
      _$QuestImageResponseCopyWithImpl<$Res, QuestImageResponse>;
  @useResult
  $Res call({int id, int questId, String imageUrl});
}

/// @nodoc
class _$QuestImageResponseCopyWithImpl<$Res, $Val extends QuestImageResponse>
    implements $QuestImageResponseCopyWith<$Res> {
  _$QuestImageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questId = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestImageResponseImplCopyWith<$Res>
    implements $QuestImageResponseCopyWith<$Res> {
  factory _$$QuestImageResponseImplCopyWith(_$QuestImageResponseImpl value,
          $Res Function(_$QuestImageResponseImpl) then) =
      __$$QuestImageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int questId, String imageUrl});
}

/// @nodoc
class __$$QuestImageResponseImplCopyWithImpl<$Res>
    extends _$QuestImageResponseCopyWithImpl<$Res, _$QuestImageResponseImpl>
    implements _$$QuestImageResponseImplCopyWith<$Res> {
  __$$QuestImageResponseImplCopyWithImpl(_$QuestImageResponseImpl _value,
      $Res Function(_$QuestImageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questId = null,
    Object? imageUrl = null,
  }) {
    return _then(_$QuestImageResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestImageResponseImpl extends _QuestImageResponse {
  const _$QuestImageResponseImpl(
      {required this.id, required this.questId, required this.imageUrl})
      : super._();

  factory _$QuestImageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestImageResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int questId;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'QuestImageResponse(id: $id, questId: $questId, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestImageResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questId, questId) || other.questId == questId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, questId, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestImageResponseImplCopyWith<_$QuestImageResponseImpl> get copyWith =>
      __$$QuestImageResponseImplCopyWithImpl<_$QuestImageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestImageResponseImplToJson(
      this,
    );
  }
}

abstract class _QuestImageResponse extends QuestImageResponse {
  const factory _QuestImageResponse(
      {required final int id,
      required final int questId,
      required final String imageUrl}) = _$QuestImageResponseImpl;
  const _QuestImageResponse._() : super._();

  factory _QuestImageResponse.fromJson(Map<String, dynamic> json) =
      _$QuestImageResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get questId;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$QuestImageResponseImplCopyWith<_$QuestImageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
