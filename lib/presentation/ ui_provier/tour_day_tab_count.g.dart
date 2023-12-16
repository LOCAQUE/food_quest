// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_day_tab_count.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tourDayTabCountHash() => r'4647bcfb9dc875b7c7ae07670a279c222a244da7';

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

abstract class _$TourDayTabCount extends BuildlessAutoDisposeNotifier<int> {
  late final int tabCount;

  int build({
    required int tabCount,
  });
}

/// See also [TourDayTabCount].
@ProviderFor(TourDayTabCount)
const tourDayTabCountProvider = TourDayTabCountFamily();

/// See also [TourDayTabCount].
class TourDayTabCountFamily extends Family<int> {
  /// See also [TourDayTabCount].
  const TourDayTabCountFamily();

  /// See also [TourDayTabCount].
  TourDayTabCountProvider call({
    required int tabCount,
  }) {
    return TourDayTabCountProvider(
      tabCount: tabCount,
    );
  }

  @override
  TourDayTabCountProvider getProviderOverride(
    covariant TourDayTabCountProvider provider,
  ) {
    return call(
      tabCount: provider.tabCount,
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
  String? get name => r'tourDayTabCountProvider';
}

/// See also [TourDayTabCount].
class TourDayTabCountProvider
    extends AutoDisposeNotifierProviderImpl<TourDayTabCount, int> {
  /// See also [TourDayTabCount].
  TourDayTabCountProvider({
    required int tabCount,
  }) : this._internal(
          () => TourDayTabCount()..tabCount = tabCount,
          from: tourDayTabCountProvider,
          name: r'tourDayTabCountProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tourDayTabCountHash,
          dependencies: TourDayTabCountFamily._dependencies,
          allTransitiveDependencies:
              TourDayTabCountFamily._allTransitiveDependencies,
          tabCount: tabCount,
        );

  TourDayTabCountProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabCount,
  }) : super.internal();

  final int tabCount;

  @override
  int runNotifierBuild(
    covariant TourDayTabCount notifier,
  ) {
    return notifier.build(
      tabCount: tabCount,
    );
  }

  @override
  Override overrideWith(TourDayTabCount Function() create) {
    return ProviderOverride(
      origin: this,
      override: TourDayTabCountProvider._internal(
        () => create()..tabCount = tabCount,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabCount: tabCount,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<TourDayTabCount, int> createElement() {
    return _TourDayTabCountProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TourDayTabCountProvider && other.tabCount == tabCount;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabCount.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TourDayTabCountRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `tabCount` of this provider.
  int get tabCount;
}

class _TourDayTabCountProviderElement
    extends AutoDisposeNotifierProviderElement<TourDayTabCount, int>
    with TourDayTabCountRef {
  _TourDayTabCountProviderElement(super.provider);

  @override
  int get tabCount => (origin as TourDayTabCountProvider).tabCount;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
