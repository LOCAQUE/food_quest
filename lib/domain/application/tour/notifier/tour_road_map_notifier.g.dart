// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_road_map_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tourRoadMapNotifierHash() =>
    r'8bf5701ad9b2d3dfc2072c25b9ecae5d81e175e1';

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

abstract class _$TourRoadMapNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<TourRoadMapResponse>?> {
  late final int tourId;

  Future<List<TourRoadMapResponse>?> build({
    required int tourId,
  });
}

/// See also [TourRoadMapNotifier].
@ProviderFor(TourRoadMapNotifier)
const tourRoadMapNotifierProvider = TourRoadMapNotifierFamily();

/// See also [TourRoadMapNotifier].
class TourRoadMapNotifierFamily
    extends Family<AsyncValue<List<TourRoadMapResponse>?>> {
  /// See also [TourRoadMapNotifier].
  const TourRoadMapNotifierFamily();

  /// See also [TourRoadMapNotifier].
  TourRoadMapNotifierProvider call({
    required int tourId,
  }) {
    return TourRoadMapNotifierProvider(
      tourId: tourId,
    );
  }

  @override
  TourRoadMapNotifierProvider getProviderOverride(
    covariant TourRoadMapNotifierProvider provider,
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
  String? get name => r'tourRoadMapNotifierProvider';
}

/// See also [TourRoadMapNotifier].
class TourRoadMapNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TourRoadMapNotifier, List<TourRoadMapResponse>?> {
  /// See also [TourRoadMapNotifier].
  TourRoadMapNotifierProvider({
    required int tourId,
  }) : this._internal(
          () => TourRoadMapNotifier()..tourId = tourId,
          from: tourRoadMapNotifierProvider,
          name: r'tourRoadMapNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tourRoadMapNotifierHash,
          dependencies: TourRoadMapNotifierFamily._dependencies,
          allTransitiveDependencies:
              TourRoadMapNotifierFamily._allTransitiveDependencies,
          tourId: tourId,
        );

  TourRoadMapNotifierProvider._internal(
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
  Future<List<TourRoadMapResponse>?> runNotifierBuild(
    covariant TourRoadMapNotifier notifier,
  ) {
    return notifier.build(
      tourId: tourId,
    );
  }

  @override
  Override overrideWith(TourRoadMapNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TourRoadMapNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<TourRoadMapNotifier,
      List<TourRoadMapResponse>?> createElement() {
    return _TourRoadMapNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TourRoadMapNotifierProvider && other.tourId == tourId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tourId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TourRoadMapNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<TourRoadMapResponse>?> {
  /// The parameter `tourId` of this provider.
  int get tourId;
}

class _TourRoadMapNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TourRoadMapNotifier,
        List<TourRoadMapResponse>?> with TourRoadMapNotifierRef {
  _TourRoadMapNotifierProviderElement(super.provider);

  @override
  int get tourId => (origin as TourRoadMapNotifierProvider).tourId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
