import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/di_providers/di_provider.dart';
import 'presentation/routers/router.dart';
import 'presentation/theme/theme.dart';
import 'utils/toast_utils.dart';

class BitoTestApp extends ConsumerStatefulWidget {
  const BitoTestApp({super.key});

  @override
  ConsumerState<BitoTestApp> createState() {
    return _BitoTestAppState();
  }
}

class _BitoTestAppState extends ConsumerState<BitoTestApp> {
  late final AppRouter appRouter;

  @override
  void initState() {
    super.initState();
    appRouter = ref.read(routerProvider);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bito Test',
      builder: (context, child) {
        return Overlay(
          initialEntries: [
            if (child != null) ...[
              OverlayEntry(
                builder: (context) {
                  ToastUtils.init(context);
                  return child;
                },
              ),
            ],
          ],
        );
      },
      theme: appTheme,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
