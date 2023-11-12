// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$answerNotifierHash() => r'5aaaefe92a54260ec4f1d5b99809c72eea866be9';

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

abstract class _$AnswerNotifier
    extends BuildlessAutoDisposeAsyncNotifier<AnswerNotifierState> {
  late final BuildContext context;

  Future<AnswerNotifierState> build(
    BuildContext context,
  );
}

/// See also [AnswerNotifier].
@ProviderFor(AnswerNotifier)
const answerNotifierProvider = AnswerNotifierFamily();

/// See also [AnswerNotifier].
class AnswerNotifierFamily extends Family<AsyncValue<AnswerNotifierState>> {
  /// See also [AnswerNotifier].
  const AnswerNotifierFamily();

  /// See also [AnswerNotifier].
  AnswerNotifierProvider call(
    BuildContext context,
  ) {
    return AnswerNotifierProvider(
      context,
    );
  }

  @override
  AnswerNotifierProvider getProviderOverride(
    covariant AnswerNotifierProvider provider,
  ) {
    return call(
      provider.context,
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
  String? get name => r'answerNotifierProvider';
}

/// See also [AnswerNotifier].
class AnswerNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    AnswerNotifier, AnswerNotifierState> {
  /// See also [AnswerNotifier].
  AnswerNotifierProvider(
    BuildContext context,
  ) : this._internal(
          () => AnswerNotifier()..context = context,
          from: answerNotifierProvider,
          name: r'answerNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$answerNotifierHash,
          dependencies: AnswerNotifierFamily._dependencies,
          allTransitiveDependencies:
              AnswerNotifierFamily._allTransitiveDependencies,
          context: context,
        );

  AnswerNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
  }) : super.internal();

  final BuildContext context;

  @override
  Future<AnswerNotifierState> runNotifierBuild(
    covariant AnswerNotifier notifier,
  ) {
    return notifier.build(
      context,
    );
  }

  @override
  Override overrideWith(AnswerNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AnswerNotifierProvider._internal(
        () => create()..context = context,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AnswerNotifier, AnswerNotifierState>
      createElement() {
    return _AnswerNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AnswerNotifierProvider && other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AnswerNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<AnswerNotifierState> {
  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _AnswerNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AnswerNotifier,
        AnswerNotifierState> with AnswerNotifierRef {
  _AnswerNotifierProviderElement(super.provider);

  @override
  BuildContext get context => (origin as AnswerNotifierProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
