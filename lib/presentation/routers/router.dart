import 'package:auto_route/auto_route.dart';
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
      ];
}
