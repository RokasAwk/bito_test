import 'package:bito_test/domain/entity/currency_item.dart';

import '../interface/result.dart';
import '../interface/usecase.dart';
import '../repository/pairs_repository.dart';

class GetPairsUseCase implements UseCase<void, List<CurrencyItem>, Exception> {
  GetPairsUseCase({required PairsRepository pairsRepository})
      : _repo = pairsRepository;

  final PairsRepository _repo;

  @override
  Future<Result<List<CurrencyItem>, Exception>> execute(void param) async {
    try {
      List<CurrencyItem> pairsList = await _repo.getPairs();
      return Result.success(pairsList);
    } catch (e) {
      print('get pairs api error: $e');
      rethrow;
    }
  }
}
