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
    CurrencyRateConversionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CurrencyRateConversionPage(),
      );
    },
    CurrencySelectRoute.name: (routeData) {
      final args = routeData.argsAs<CurrencySelectRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CurrencySelectPage(
          key: args.key,
          onTap: args.onTap,
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
/// [CurrencyRateConversionPage]
class CurrencyRateConversionRoute extends PageRouteInfo<void> {
  const CurrencyRateConversionRoute({List<PageRouteInfo>? children})
      : super(
          CurrencyRateConversionRoute.name,
          initialChildren: children,
        );

  static const String name = 'CurrencyRateConversionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CurrencySelectPage]
class CurrencySelectRoute extends PageRouteInfo<CurrencySelectRouteArgs> {
  CurrencySelectRoute({
    Key? key,
    required dynamic Function(CurrencyItem) onTap,
    List<PageRouteInfo>? children,
  }) : super(
          CurrencySelectRoute.name,
          args: CurrencySelectRouteArgs(
            key: key,
            onTap: onTap,
          ),
          initialChildren: children,
        );

  static const String name = 'CurrencySelectRoute';

  static const PageInfo<CurrencySelectRouteArgs> page =
      PageInfo<CurrencySelectRouteArgs>(name);
}

class CurrencySelectRouteArgs {
  const CurrencySelectRouteArgs({
    this.key,
    required this.onTap,
  });

  final Key? key;

  final dynamic Function(CurrencyItem) onTap;

  @override
  String toString() {
    return 'CurrencySelectRouteArgs{key: $key, onTap: $onTap}';
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
