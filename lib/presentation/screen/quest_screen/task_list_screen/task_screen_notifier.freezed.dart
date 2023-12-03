// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_screen_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskScreenResponse _$TaskScreenResponseFromJson(Map<String, dynamic> json) {
  return _TaskScreenResponse.fromJson(json);
}

/// @nodoc
mixin _$TaskScreenResponse {
  String get id => throw _privateConstructorUsedError;
  int get targetNumber => throw _privateConstructorUsedError;
  int get categoryNumber => throw _privateConstructorUsedError;
  String get task => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskScreenResponseCopyWith<TaskScreenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskScreenResponseCopyWith<$Res> {
  factory $TaskScreenResponseCopyWith(
          TaskScreenResponse value, $Res Function(TaskScreenResponse) then) =
      _$TaskScreenResponseCopyWithImpl<$Res, TaskScreenResponse>;
  @useResult
  $Res call({String id, int targetNumber, int categoryNumber, String task});
}

/// @nodoc
class _$TaskScreenResponseCopyWithImpl<$Res, $Val extends TaskScreenResponse>
    implements $TaskScreenResponseCopyWith<$Res> {
  _$TaskScreenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? targetNumber = null,
    Object? categoryNumber = null,
    Object? task = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      targetNumber: null == targetNumber
          ? _value.targetNumber
          : targetNumber // ignore: cast_nullable_to_non_nullable
              as int,
      categoryNumber: null == categoryNumber
          ? _value.categoryNumber
          : categoryNumber // ignore: cast_nullable_to_non_nullable
              as int,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskScreenResponseImplCopyWith<$Res>
    implements $TaskScreenResponseCopyWith<$Res> {
  factory _$$TaskScreenResponseImplCopyWith(_$TaskScreenResponseImpl value,
          $Res Function(_$TaskScreenResponseImpl) then) =
      __$$TaskScreenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int targetNumber, int categoryNumber, String task});
}

/// @nodoc
class __$$TaskScreenResponseImplCopyWithImpl<$Res>
    extends _$TaskScreenResponseCopyWithImpl<$Res, _$TaskScreenResponseImpl>
    implements _$$TaskScreenResponseImplCopyWith<$Res> {
  __$$TaskScreenResponseImplCopyWithImpl(_$TaskScreenResponseImpl _value,
      $Res Function(_$TaskScreenResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? targetNumber = null,
    Object? categoryNumber = null,
    Object? task = null,
  }) {
    return _then(_$TaskScreenResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      targetNumber: null == targetNumber
          ? _value.targetNumber
          : targetNumber // ignore: cast_nullable_to_non_nullable
              as int,
      categoryNumber: null == categoryNumber
          ? _value.categoryNumber
          : categoryNumber // ignore: cast_nullable_to_non_nullable
              as int,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskScreenResponseImpl implements _TaskScreenResponse {
  const _$TaskScreenResponseImpl(
      {required this.id,
      required this.targetNumber,
      required this.categoryNumber,
      required this.task});

  factory _$TaskScreenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskScreenResponseImplFromJson(json);

  @override
  final String id;
  @override
  final int targetNumber;
  @override
  final int categoryNumber;
  @override
  final String task;

  @override
  String toString() {
    return 'TaskScreenResponse(id: $id, targetNumber: $targetNumber, categoryNumber: $categoryNumber, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskScreenResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.targetNumber, targetNumber) ||
                other.targetNumber == targetNumber) &&
            (identical(other.categoryNumber, categoryNumber) ||
                other.categoryNumber == categoryNumber) &&
            (identical(other.task, task) || other.task == task));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, targetNumber, categoryNumber, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskScreenResponseImplCopyWith<_$TaskScreenResponseImpl> get copyWith =>
      __$$TaskScreenResponseImplCopyWithImpl<_$TaskScreenResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskScreenResponseImplToJson(
      this,
    );
  }
}

abstract class _TaskScreenResponse implements TaskScreenResponse {
  const factory _TaskScreenResponse(
      {required final String id,
      required final int targetNumber,
      required final int categoryNumber,
      required final String task}) = _$TaskScreenResponseImpl;

  factory _TaskScreenResponse.fromJson(Map<String, dynamic> json) =
      _$TaskScreenResponseImpl.fromJson;

  @override
  String get id;
  @override
  int get targetNumber;
  @override
  int get categoryNumber;
  @override
  String get task;
  @override
  @JsonKey(ignore: true)
  _$$TaskScreenResponseImplCopyWith<_$TaskScreenResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
