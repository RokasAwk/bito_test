import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'get_pairs_response_dto.dart';

part 'pairs_api.g.dart';

@RestApi(baseUrl: "https://65efcc68ead08fa78a50f929.mockapi.io/api/v1/")
abstract class PairsApi {
  factory PairsApi(Dio dio, {String baseUrl}) = _PairsApi;

  @GET('/pairs')
  Future<List<GetPairsResponseDto>> getPairs();
}
