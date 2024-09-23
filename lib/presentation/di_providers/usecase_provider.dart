part of "di_provider.dart";

final getPairsUseCaseProvider = Provider.autoDispose<GetPairsUseCase>((ref) {
  return GetPairsUseCase(pairsRepository: ref.watch(pairsRepoProvider));
});
