// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_detail_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tourDetailUsecaseHash() => r'fb2314b036aecb4c879bd93d20b096a2c7cbd7ab';

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

abstract class _$TourDetailUsecase
    extends BuildlessAutoDisposeAsyncNotifier<TourResponse?> {
  late final int tourId;

  Future<TourResponse?> build({
    required int tourId,
  });
}

/// See also [TourDetailUsecase].
@ProviderFor(TourDetailUsecase)
const tourDetailUsecaseProvider = TourDetailUsecaseFamily();

/// See also [TourDetailUsecase].
class TourDetailUsecaseFamily extends Family<AsyncValue<TourResponse?>> {
  /// See also [TourDetailUsecase].
  const TourDetailUsecaseFamily();

  /// See also [TourDetailUsecase].
  TourDetailUsecaseProvider call({
    required int tourId,
  }) {
    return TourDetailUsecaseProvider(
      tourId: tourId,
    );
  }

  @override
  TourDetailUsecaseProvider getProviderOverride(
    covariant TourDetailUsecaseProvider provider,
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
  String? get name => r'tourDetailUsecaseProvider';
}

/// See also [TourDetailUsecase].
class TourDetailUsecaseProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TourDetailUsecase, TourResponse?> {
  /// See also [TourDetailUsecase].
  TourDetailUsecaseProvider({
    required int tourId,
  }) : this._internal(
          () => TourDetailUsecase()..tourId = tourId,
          from: tourDetailUsecaseProvider,
          name: r'tourDetailUsecaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tourDetailUsecaseHash,
          dependencies: TourDetailUsecaseFamily._dependencies,
          allTransitiveDependencies:
              TourDetailUsecaseFamily._allTransitiveDependencies,
          tourId: tourId,
        );

  TourDetailUsecaseProvider._internal(
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
  Future<TourResponse?> runNotifierBuild(
    covariant TourDetailUsecase notifier,
  ) {
    return notifier.build(
      tourId: tourId,
    );
  }

  @override
  Override overrideWith(TourDetailUsecase Function() create) {
    return ProviderOverride(
      origin: this,
      override: TourDetailUsecaseProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<TourDetailUsecase, TourResponse?>
      createElement() {
    return _TourDetailUsecaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TourDetailUsecaseProvider && other.tourId == tourId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tourId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TourDetailUsecaseRef
    on AutoDisposeAsyncNotifierProviderRef<TourResponse?> {
  /// The parameter `tourId` of this provider.
  int get tourId;
}

class _TourDetailUsecaseProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TourDetailUsecase,
        TourResponse?> with TourDetailUsecaseRef {
  _TourDetailUsecaseProviderElement(super.provider);

  @override
  int get tourId => (origin as TourDetailUsecaseProvider).tourId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
