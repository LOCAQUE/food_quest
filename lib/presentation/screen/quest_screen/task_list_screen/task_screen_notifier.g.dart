// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_screen_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskScreenResponseImpl _$$TaskScreenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskScreenResponseImpl(
      id: json['id'] as String,
      targetNumber: json['targetNumber'] as int,
      categoryNumber: json['categoryNumber'] as int,
      task: json['task'] as String,
    );

Map<String, dynamic> _$$TaskScreenResponseImplToJson(
        _$TaskScreenResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'targetNumber': instance.targetNumber,
      'categoryNumber': instance.categoryNumber,
      'task': instance.task,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskScreenNotifierHash() =>
    r'8b065a50277c0fb3b52f921df27f4a6f2ef845a8';

/// See also [TaskScreenNotifier].
@ProviderFor(TaskScreenNotifier)
final taskScreenNotifierProvider = AutoDisposeAsyncNotifierProvider<
    TaskScreenNotifier, List<TaskScreenResponse>?>.internal(
  TaskScreenNotifier.new,
  name: r'taskScreenNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$taskScreenNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TaskScreenNotifier
    = AutoDisposeAsyncNotifier<List<TaskScreenResponse>?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
