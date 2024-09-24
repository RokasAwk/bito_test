// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CurrencySelectRoute.name: (routeData) {
      final args = routeData.argsAs<CurrencySelectRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CurrencySelectPage(
          onChangedCurrentCurrency: args.onChangedCurrentCurrency,
          key: args.key,
        ),
      );
    },
    ExchangeRateTableRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExchangeRateTablePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
  };
}

/// generated route for
/// [CurrencySelectPage]
class CurrencySelectRoute extends PageRouteInfo<CurrencySelectRouteArgs> {
  CurrencySelectRoute({
    required dynamic Function(Currency) onChangedCurrentCurrency,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CurrencySelectRoute.name,
          args: CurrencySelectRouteArgs(
            onChangedCurrentCurrency: onChangedCurrentCurrency,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CurrencySelectRoute';

  static const PageInfo<CurrencySelectRouteArgs> page =
      PageInfo<CurrencySelectRouteArgs>(name);
}

class CurrencySelectRouteArgs {
  const CurrencySelectRouteArgs({
    required this.onChangedCurrentCurrency,
    this.key,
  });

  final dynamic Function(Currency) onChangedCurrentCurrency;

  final Key? key;

  @override
  String toString() {
    return 'CurrencySelectRouteArgs{onChangedCurrentCurrency: $onChangedCurrentCurrency, key: $key}';
  }
}

/// generated route for
/// [ExchangeRateTablePage]
class ExchangeRateTableRoute extends PageRouteInfo<void> {
  const ExchangeRateTableRoute({List<PageRouteInfo>? children})
      : super(
          ExchangeRateTableRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExchangeRateTableRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
