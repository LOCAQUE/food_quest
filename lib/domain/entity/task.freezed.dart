// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get task => throw _privateConstructorUsedError;
  int get targetNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call({int id, DateTime createdAt, String task, int targetNumber});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? task = null,
    Object? targetNumber = null,
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
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      targetNumber: null == targetNumber
          ? _value.targetNumber
          : targetNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime createdAt, String task, int targetNumber});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? task = null,
    Object? targetNumber = null,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      targetNumber: null == targetNumber
          ? _value.targetNumber
          : targetNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {required this.id,
      required this.createdAt,
      required this.task,
      required this.targetNumber});

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final String task;
  @override
  final int targetNumber;

  @override
  String toString() {
    return 'Task(id: $id, createdAt: $createdAt, task: $task, targetNumber: $targetNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.targetNumber, targetNumber) ||
                other.targetNumber == targetNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, task, targetNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {required final int id,
      required final DateTime createdAt,
      required final String task,
      required final int targetNumber}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get createdAt;
  @override
  String get task;
  @override
  int get targetNumber;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserTask _$UserTaskFromJson(Map<String, dynamic> json) {
  return _UserTask.fromJson(json);
}

/// @nodoc
mixin _$UserTask {
  int get id => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  int get task_id => throw _privateConstructorUsedError;
  bool get is_done => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTaskCopyWith<UserTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTaskCopyWith<$Res> {
  factory $UserTaskCopyWith(UserTask value, $Res Function(UserTask) then) =
      _$UserTaskCopyWithImpl<$Res, UserTask>;
  @useResult
  $Res call(
      {int id, DateTime created_at, int task_id, bool is_done, String user_id});
}

/// @nodoc
class _$UserTaskCopyWithImpl<$Res, $Val extends UserTask>
    implements $UserTaskCopyWith<$Res> {
  _$UserTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? task_id = null,
    Object? is_done = null,
    Object? user_id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      task_id: null == task_id
          ? _value.task_id
          : task_id // ignore: cast_nullable_to_non_nullable
              as int,
      is_done: null == is_done
          ? _value.is_done
          : is_done // ignore: cast_nullable_to_non_nullable
              as bool,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserTaskImplCopyWith<$Res>
    implements $UserTaskCopyWith<$Res> {
  factory _$$UserTaskImplCopyWith(
          _$UserTaskImpl value, $Res Function(_$UserTaskImpl) then) =
      __$$UserTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, DateTime created_at, int task_id, bool is_done, String user_id});
}

/// @nodoc
class __$$UserTaskImplCopyWithImpl<$Res>
    extends _$UserTaskCopyWithImpl<$Res, _$UserTaskImpl>
    implements _$$UserTaskImplCopyWith<$Res> {
  __$$UserTaskImplCopyWithImpl(
      _$UserTaskImpl _value, $Res Function(_$UserTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? task_id = null,
    Object? is_done = null,
    Object? user_id = null,
  }) {
    return _then(_$UserTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      task_id: null == task_id
          ? _value.task_id
          : task_id // ignore: cast_nullable_to_non_nullable
              as int,
      is_done: null == is_done
          ? _value.is_done
          : is_done // ignore: cast_nullable_to_non_nullable
              as bool,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTaskImpl implements _UserTask {
  const _$UserTaskImpl(
      {required this.id,
      required this.created_at,
      required this.task_id,
      required this.is_done,
      required this.user_id});

  factory _$UserTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTaskImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime created_at;
  @override
  final int task_id;
  @override
  final bool is_done;
  @override
  final String user_id;

  @override
  String toString() {
    return 'UserTask(id: $id, created_at: $created_at, task_id: $task_id, is_done: $is_done, user_id: $user_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.task_id, task_id) || other.task_id == task_id) &&
            (identical(other.is_done, is_done) || other.is_done == is_done) &&
            (identical(other.user_id, user_id) || other.user_id == user_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, created_at, task_id, is_done, user_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTaskImplCopyWith<_$UserTaskImpl> get copyWith =>
      __$$UserTaskImplCopyWithImpl<_$UserTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTaskImplToJson(
      this,
    );
  }
}

abstract class _UserTask implements UserTask {
  const factory _UserTask(
      {required final int id,
      required final DateTime created_at,
      required final int task_id,
      required final bool is_done,
      required final String user_id}) = _$UserTaskImpl;

  factory _UserTask.fromJson(Map<String, dynamic> json) =
      _$UserTaskImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get created_at;
  @override
  int get task_id;
  @override
  bool get is_done;
  @override
  String get user_id;
  @override
  @JsonKey(ignore: true)
  _$$UserTaskImplCopyWith<_$UserTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskResponse _$TaskResponseFromJson(Map<String, dynamic> json) {
  return _TaskResponse.fromJson(json);
}

/// @nodoc
mixin _$TaskResponse {
  int get id => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  int get task_id => throw _privateConstructorUsedError;
  bool get is_done => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  Task? get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskResponseCopyWith<TaskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskResponseCopyWith<$Res> {
  factory $TaskResponseCopyWith(
          TaskResponse value, $Res Function(TaskResponse) then) =
      _$TaskResponseCopyWithImpl<$Res, TaskResponse>;
  @useResult
  $Res call(
      {int id,
      DateTime created_at,
      int task_id,
      bool is_done,
      String user_id,
      Task? tasks});

  $TaskCopyWith<$Res>? get tasks;
}

/// @nodoc
class _$TaskResponseCopyWithImpl<$Res, $Val extends TaskResponse>
    implements $TaskResponseCopyWith<$Res> {
  _$TaskResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? task_id = null,
    Object? is_done = null,
    Object? user_id = null,
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      task_id: null == task_id
          ? _value.task_id
          : task_id // ignore: cast_nullable_to_non_nullable
              as int,
      is_done: null == is_done
          ? _value.is_done
          : is_done // ignore: cast_nullable_to_non_nullable
              as bool,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as Task?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res>? get tasks {
    if (_value.tasks == null) {
      return null;
    }

    return $TaskCopyWith<$Res>(_value.tasks!, (value) {
      return _then(_value.copyWith(tasks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskResponseImplCopyWith<$Res>
    implements $TaskResponseCopyWith<$Res> {
  factory _$$TaskResponseImplCopyWith(
          _$TaskResponseImpl value, $Res Function(_$TaskResponseImpl) then) =
      __$$TaskResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime created_at,
      int task_id,
      bool is_done,
      String user_id,
      Task? tasks});

  @override
  $TaskCopyWith<$Res>? get tasks;
}

/// @nodoc
class __$$TaskResponseImplCopyWithImpl<$Res>
    extends _$TaskResponseCopyWithImpl<$Res, _$TaskResponseImpl>
    implements _$$TaskResponseImplCopyWith<$Res> {
  __$$TaskResponseImplCopyWithImpl(
      _$TaskResponseImpl _value, $Res Function(_$TaskResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? task_id = null,
    Object? is_done = null,
    Object? user_id = null,
    Object? tasks = freezed,
  }) {
    return _then(_$TaskResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      task_id: null == task_id
          ? _value.task_id
          : task_id // ignore: cast_nullable_to_non_nullable
              as int,
      is_done: null == is_done
          ? _value.is_done
          : is_done // ignore: cast_nullable_to_non_nullable
              as bool,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as Task?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskResponseImpl extends _TaskResponse {
  const _$TaskResponseImpl(
      {required this.id,
      required this.created_at,
      required this.task_id,
      required this.is_done,
      required this.user_id,
      this.tasks})
      : super._();

  factory _$TaskResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskResponseImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime created_at;
  @override
  final int task_id;
  @override
  final bool is_done;
  @override
  final String user_id;
  @override
  final Task? tasks;

  @override
  String toString() {
    return 'TaskResponse(id: $id, created_at: $created_at, task_id: $task_id, is_done: $is_done, user_id: $user_id, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.task_id, task_id) || other.task_id == task_id) &&
            (identical(other.is_done, is_done) || other.is_done == is_done) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.tasks, tasks) || other.tasks == tasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, created_at, task_id, is_done, user_id, tasks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskResponseImplCopyWith<_$TaskResponseImpl> get copyWith =>
      __$$TaskResponseImplCopyWithImpl<_$TaskResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskResponseImplToJson(
      this,
    );
  }
}

abstract class _TaskResponse extends TaskResponse {
  const factory _TaskResponse(
      {required final int id,
      required final DateTime created_at,
      required final int task_id,
      required final bool is_done,
      required final String user_id,
      final Task? tasks}) = _$TaskResponseImpl;
  const _TaskResponse._() : super._();

  factory _TaskResponse.fromJson(Map<String, dynamic> json) =
      _$TaskResponseImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get created_at;
  @override
  int get task_id;
  @override
  bool get is_done;
  @override
  String get user_id;
  @override
  Task? get tasks;
  @override
  @JsonKey(ignore: true)
  _$$TaskResponseImplCopyWith<_$TaskResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
