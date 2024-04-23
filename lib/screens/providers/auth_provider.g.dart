// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$validateLoginHash() => r'7130a467d018b833dcb767dd9593ba66a2fc8943';

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

/// See also [validateLogin].
@ProviderFor(validateLogin)
const validateLoginProvider = ValidateLoginFamily();

/// See also [validateLogin].
class ValidateLoginFamily extends Family<void> {
  /// See also [validateLogin].
  const ValidateLoginFamily();

  /// See also [validateLogin].
  ValidateLoginProvider call(
    String email,
    String password,
    BuildContext context,
  ) {
    return ValidateLoginProvider(
      email,
      password,
      context,
    );
  }

  @override
  ValidateLoginProvider getProviderOverride(
    covariant ValidateLoginProvider provider,
  ) {
    return call(
      provider.email,
      provider.password,
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
  String? get name => r'validateLoginProvider';
}

/// See also [validateLogin].
class ValidateLoginProvider extends AutoDisposeProvider<void> {
  /// See also [validateLogin].
  ValidateLoginProvider(
    String email,
    String password,
    BuildContext context,
  ) : this._internal(
          (ref) => validateLogin(
            ref as ValidateLoginRef,
            email,
            password,
            context,
          ),
          from: validateLoginProvider,
          name: r'validateLoginProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$validateLoginHash,
          dependencies: ValidateLoginFamily._dependencies,
          allTransitiveDependencies:
              ValidateLoginFamily._allTransitiveDependencies,
          email: email,
          password: password,
          context: context,
        );

  ValidateLoginProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.email,
    required this.password,
    required this.context,
  }) : super.internal();

  final String email;
  final String password;
  final BuildContext context;

  @override
  Override overrideWith(
    void Function(ValidateLoginRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ValidateLoginProvider._internal(
        (ref) => create(ref as ValidateLoginRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        email: email,
        password: password,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<void> createElement() {
    return _ValidateLoginProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ValidateLoginProvider &&
        other.email == email &&
        other.password == password &&
        other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);
    hash = _SystemHash.combine(hash, password.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ValidateLoginRef on AutoDisposeProviderRef<void> {
  /// The parameter `email` of this provider.
  String get email;

  /// The parameter `password` of this provider.
  String get password;

  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _ValidateLoginProviderElement extends AutoDisposeProviderElement<void>
    with ValidateLoginRef {
  _ValidateLoginProviderElement(super.provider);

  @override
  String get email => (origin as ValidateLoginProvider).email;
  @override
  String get password => (origin as ValidateLoginProvider).password;
  @override
  BuildContext get context => (origin as ValidateLoginProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
