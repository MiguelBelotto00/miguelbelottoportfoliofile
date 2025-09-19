// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PortfolioProvider)
const portfolioProviderProvider = PortfolioProviderProvider._();

final class PortfolioProviderProvider
    extends $AsyncNotifierProvider<PortfolioProvider, List<ProjectModel>> {
  const PortfolioProviderProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'portfolioProviderProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$portfolioProviderHash();

  @$internal
  @override
  PortfolioProvider create() => PortfolioProvider();
}

String _$portfolioProviderHash() => r'd13ef5fcb412fe570bd9dcf079ef54687f59ea55';

abstract class _$PortfolioProvider extends $AsyncNotifier<List<ProjectModel>> {
  FutureOr<List<ProjectModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<ProjectModel>>, List<ProjectModel>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<ProjectModel>>, List<ProjectModel>>,
        AsyncValue<List<ProjectModel>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
