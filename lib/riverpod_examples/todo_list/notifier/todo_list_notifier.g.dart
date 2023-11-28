// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoListNotifierHash() => r'a088c1d6e5b1e15f94d0ed564369355f38b49de0';

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

abstract class _$TodoListNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Todo>> {
  late final String whoIAm;

  FutureOr<List<Todo>> build({
    required String whoIAm,
  });
}

/// See also [TodoListNotifier].
@ProviderFor(TodoListNotifier)
const todoListNotifierProvider = TodoListNotifierFamily();

/// See also [TodoListNotifier].
class TodoListNotifierFamily extends Family<AsyncValue<List<Todo>>> {
  /// See also [TodoListNotifier].
  const TodoListNotifierFamily();

  /// See also [TodoListNotifier].
  TodoListNotifierProvider call({
    required String whoIAm,
  }) {
    return TodoListNotifierProvider(
      whoIAm: whoIAm,
    );
  }

  @override
  TodoListNotifierProvider getProviderOverride(
    covariant TodoListNotifierProvider provider,
  ) {
    return call(
      whoIAm: provider.whoIAm,
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
  String? get name => r'todoListNotifierProvider';
}

/// See also [TodoListNotifier].
class TodoListNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TodoListNotifier, List<Todo>> {
  /// See also [TodoListNotifier].
  TodoListNotifierProvider({
    required String whoIAm,
  }) : this._internal(
          () => TodoListNotifier()..whoIAm = whoIAm,
          from: todoListNotifierProvider,
          name: r'todoListNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todoListNotifierHash,
          dependencies: TodoListNotifierFamily._dependencies,
          allTransitiveDependencies:
              TodoListNotifierFamily._allTransitiveDependencies,
          whoIAm: whoIAm,
        );

  TodoListNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.whoIAm,
  }) : super.internal();

  final String whoIAm;

  @override
  FutureOr<List<Todo>> runNotifierBuild(
    covariant TodoListNotifier notifier,
  ) {
    return notifier.build(
      whoIAm: whoIAm,
    );
  }

  @override
  Override overrideWith(TodoListNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodoListNotifierProvider._internal(
        () => create()..whoIAm = whoIAm,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        whoIAm: whoIAm,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TodoListNotifier, List<Todo>>
      createElement() {
    return _TodoListNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoListNotifierProvider && other.whoIAm == whoIAm;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, whoIAm.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TodoListNotifierRef on AutoDisposeAsyncNotifierProviderRef<List<Todo>> {
  /// The parameter `whoIAm` of this provider.
  String get whoIAm;
}

class _TodoListNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TodoListNotifier,
        List<Todo>> with TodoListNotifierRef {
  _TodoListNotifierProviderElement(super.provider);

  @override
  String get whoIAm => (origin as TodoListNotifierProvider).whoIAm;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
