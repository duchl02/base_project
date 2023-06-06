import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:base_project/i18n/strings.g.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../di/di.dart';
import '../routes/routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appRouter = getIt<AppRouter>();
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: context.t.core.home,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // routerConfig: appRouter.config(),
      routerDelegate: AutoRouterDelegate(
        appRouter,
        navigatorObservers: () => [RouteObserver()],
      ),
      routeInformationParser: appRouter.defaultRouteParser(),
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
