// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grouped_answers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupedAnswersNotfiierHash() =>
    r'513070caf19d629bdf6d231ab33ffcd23881e658';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$GroupedAnswersNotfiier
    extends BuildlessAutoDisposeAsyncNotifier<Map<String, List<Answer>>?> {
  late final int questId;

  Future<Map<String, List<Answer>>?> build({
    required int questId,
  });
}

/// See also [GroupedAnswersNotfiier].
@ProviderFor(GroupedAnswersNotfiier)
const groupedAnswersNotfiierProvider = GroupedAnswersNotfiierFamily();

/// See also [GroupedAnswersNotfiier].
class GroupedAnswersNotfiierFamily
    extends Family<AsyncValue<Map<String, List<Answer>>?>> {
  /// See also [GroupedAnswersNotfiier].
  const GroupedAnswersNotfiierFamily();

  /// See also [GroupedAnswersNotfiier].
  GroupedAnswersNotfiierProvider call({
    required int questId,
  }) {
    return GroupedAnswersNotfiierProvider(
      questId: questId,
    );
  }

  @override
  GroupedAnswersNotfiierProvider getProviderOverride(
    covariant GroupedAnswersNotfiierProvider provider,
  ) {
    return call(
      questId: provider.questId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'groupedAnswersNotfiierProvider';
}

/// See also [GroupedAnswersNotfiier].
class GroupedAnswersNotfiierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GroupedAnswersNotfiier,
        Map<String, List<Answer>>?> {
  /// See also [GroupedAnswersNotfiier].
  GroupedAnswersNotfiierProvider({
    required int questId,
  }) : this._internal(
          () => GroupedAnswersNotfiier()..questId = questId,
          from: groupedAnswersNotfiierProvider,
          name: r'groupedAnswersNotfiierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$groupedAnswersNotfiierHash,
          dependencies: GroupedAnswersNotfiierFamily._dependencies,
          allTransitiveDependencies:
              GroupedAnswersNotfiierFamily._allTransitiveDependencies,
          questId: questId,
        );

  GroupedAnswersNotfiierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.questId,
  }) : super.internal();

  final int questId;

  @override
  Future<Map<String, List<Answer>>?> runNotifierBuild(
    covariant GroupedAnswersNotfiier notifier,
  ) {
    return notifier.build(
      questId: questId,
    );
  }

  @override
  Override overrideWith(GroupedAnswersNotfiier Function() create) {
    return ProviderOverride(
      origin: this,
      override: GroupedAnswersNotfiierProvider._internal(
        () => create()..questId = questId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        questId: questId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GroupedAnswersNotfiier,
      Map<String, List<Answer>>?> createElement() {
    return _GroupedAnswersNotfiierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GroupedAnswersNotfiierProvider && other.questId == questId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, questId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GroupedAnswersNotfiierRef
    on AutoDisposeAsyncNotifierProviderRef<Map<String, List<Answer>>?> {
  /// The parameter `questId` of this provider.
  int get questId;
}

class _GroupedAnswersNotfiierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GroupedAnswersNotfiier,
        Map<String, List<Answer>>?> with GroupedAnswersNotfiierRef {
  _GroupedAnswersNotfiierProviderElement(super.provider);

  @override
  int get questId => (origin as GroupedAnswersNotfiierProvider).questId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
