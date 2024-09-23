part of "di_provider.dart";

final pairsRepoProvider = Provider.autoDispose<PairsRepository>((ref) {
  return PairsRepositoryImpl(
    pairsApi: () => ref.read(pairsApiProvider),
  );
});
