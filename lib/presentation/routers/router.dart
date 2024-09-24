import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../domain/entity/currency_item.dart';
import '../pages/currency_rate_conversion/currency_rate_conversion_page.dart';
import '../pages/currency_select/currency_select_page.dart';
import '../pages/exchange_rate_table/exchange_rate_table_page.dart';
import '../pages/home/home_page.dart';

part 'router.gr.dart';

/// generate the router files
/// flutter pub run build_runner build --delete-conflicting-outputs

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          initial: true,
          maintainState: false,
          page: HomeRoute.page,
        ),
        AutoRoute(
          page: ExchangeRateTableRoute.page,
        ),
        AutoRoute(
          page: CurrencySelectRoute.page,
        ),
        AutoRoute(
          page: CurrencyRateConversionRoute.page,
        ),
      ];
}
