// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_tour_road_map_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupTourRoadMapUsecaseHash() =>
    r'069ea438214fbe00788dd3f36ae99e6689022029';

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

abstract class _$GroupTourRoadMapUsecase
    extends BuildlessAutoDisposeAsyncNotifier<
        Map<String, List<TourRoadMapResponse>>?> {
  late final int tourId;

  Future<Map<String, List<TourRoadMapResponse>>?> build({
    required int tourId,
  });
}

/// See also [GroupTourRoadMapUsecase].
@ProviderFor(GroupTourRoadMapUsecase)
const groupTourRoadMapUsecaseProvider = GroupTourRoadMapUsecaseFamily();

/// See also [GroupTourRoadMapUsecase].
class GroupTourRoadMapUsecaseFamily
    extends Family<AsyncValue<Map<String, List<TourRoadMapResponse>>?>> {
  /// See also [GroupTourRoadMapUsecase].
  const GroupTourRoadMapUsecaseFamily();

  /// See also [GroupTourRoadMapUsecase].
  GroupTourRoadMapUsecaseProvider call({
    required int tourId,
  }) {
    return GroupTourRoadMapUsecaseProvider(
      tourId: tourId,
    );
  }

  @override
  GroupTourRoadMapUsecaseProvider getProviderOverride(
    covariant GroupTourRoadMapUsecaseProvider provider,
  ) {
    return call(
      tourId: provider.tourId,
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
  String? get name => r'groupTourRoadMapUsecaseProvider';
}

/// See also [GroupTourRoadMapUsecase].
class GroupTourRoadMapUsecaseProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GroupTourRoadMapUsecase,
        Map<String, List<TourRoadMapResponse>>?> {
  /// See also [GroupTourRoadMapUsecase].
  GroupTourRoadMapUsecaseProvider({
    required int tourId,
  }) : this._internal(
          () => GroupTourRoadMapUsecase()..tourId = tourId,
          from: groupTourRoadMapUsecaseProvider,
          name: r'groupTourRoadMapUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$groupTourRoadMapUsecaseHash,
          dependencies: GroupTourRoadMapUsecaseFamily._dependencies,
          allTransitiveDependencies:
              GroupTourRoadMapUsecaseFamily._allTransitiveDependencies,
          tourId: tourId,
        );

  GroupTourRoadMapUsecaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tourId,
  }) : super.internal();

  final int tourId;

  @override
  Future<Map<String, List<TourRoadMapResponse>>?> runNotifierBuild(
    covariant GroupTourRoadMapUsecase notifier,
  ) {
    return notifier.build(
      tourId: tourId,
    );
  }

  @override
  Override overrideWith(GroupTourRoadMapUsecase Function() create) {
    return ProviderOverride(
      origin: this,
      override: GroupTourRoadMapUsecaseProvider._internal(
        () => create()..tourId = tourId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tourId: tourId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GroupTourRoadMapUsecase,
      Map<String, List<TourRoadMapResponse>>?> createElement() {
    return _GroupTourRoadMapUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GroupTourRoadMapUsecaseProvider && other.tourId == tourId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tourId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GroupTourRoadMapUsecaseRef on AutoDisposeAsyncNotifierProviderRef<
    Map<String, List<TourRoadMapResponse>>?> {
  /// The parameter `tourId` of this provider.
  int get tourId;
}

class _GroupTourRoadMapUsecaseProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GroupTourRoadMapUsecase,
        Map<String, List<TourRoadMapResponse>>?>
    with GroupTourRoadMapUsecaseRef {
  _GroupTourRoadMapUsecaseProviderElement(super.provider);

  @override
  int get tourId => (origin as GroupTourRoadMapUsecaseProvider).tourId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
