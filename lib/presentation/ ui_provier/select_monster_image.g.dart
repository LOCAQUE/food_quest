// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_monster_image.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectMonsterImageHash() =>
    r'd7d82925d4b09b9a03ea3378b4a52ed5f8764624';

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

abstract class _$SelectMonsterImage
    extends BuildlessAutoDisposeNotifier<String> {
  late final int selectedPet;

  String build({
    required int selectedPet,
  });
}

/// See also [SelectMonsterImage].
@ProviderFor(SelectMonsterImage)
const selectMonsterImageProvider = SelectMonsterImageFamily();

/// See also [SelectMonsterImage].
class SelectMonsterImageFamily extends Family<String> {
  /// See also [SelectMonsterImage].
  const SelectMonsterImageFamily();

  /// See also [SelectMonsterImage].
  SelectMonsterImageProvider call({
    required int selectedPet,
  }) {
    return SelectMonsterImageProvider(
      selectedPet: selectedPet,
    );
  }

  @override
  SelectMonsterImageProvider getProviderOverride(
    covariant SelectMonsterImageProvider provider,
  ) {
    return call(
      selectedPet: provider.selectedPet,
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
  String? get name => r'selectMonsterImageProvider';
}

/// See also [SelectMonsterImage].
class SelectMonsterImageProvider
    extends AutoDisposeNotifierProviderImpl<SelectMonsterImage, String> {
  /// See also [SelectMonsterImage].
  SelectMonsterImageProvider({
    required int selectedPet,
  }) : this._internal(
          () => SelectMonsterImage()..selectedPet = selectedPet,
          from: selectMonsterImageProvider,
          name: r'selectMonsterImageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectMonsterImageHash,
          dependencies: SelectMonsterImageFamily._dependencies,
          allTransitiveDependencies:
              SelectMonsterImageFamily._allTransitiveDependencies,
          selectedPet: selectedPet,
        );

  SelectMonsterImageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.selectedPet,
  }) : super.internal();

  final int selectedPet;

  @override
  String runNotifierBuild(
    covariant SelectMonsterImage notifier,
  ) {
    return notifier.build(
      selectedPet: selectedPet,
    );
  }

  @override
  Override overrideWith(SelectMonsterImage Function() create) {
    return ProviderOverride(
      origin: this,
      override: SelectMonsterImageProvider._internal(
        () => create()..selectedPet = selectedPet,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        selectedPet: selectedPet,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SelectMonsterImage, String>
      createElement() {
    return _SelectMonsterImageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectMonsterImageProvider &&
        other.selectedPet == selectedPet;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, selectedPet.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SelectMonsterImageRef on AutoDisposeNotifierProviderRef<String> {
  /// The parameter `selectedPet` of this provider.
  int get selectedPet;
}

class _SelectMonsterImageProviderElement
    extends AutoDisposeNotifierProviderElement<SelectMonsterImage, String>
    with SelectMonsterImageRef {
  _SelectMonsterImageProviderElement(super.provider);

  @override
  int get selectedPet => (origin as SelectMonsterImageProvider).selectedPet;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
