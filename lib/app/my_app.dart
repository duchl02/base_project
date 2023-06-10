import 'package:auto_route/auto_route.dart';
import 'package:base_project/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final appBloc = AppBloc();
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    appBloc.add(const AppEvent.initiated());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => appBloc,
        ),
      ],
      child: MaterialApp.router(
        title: context.t.core.home,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // routerConfig: appRouter.config(),
        routerDelegate: AutoRouterDelegate(
          appRouter,
          initialRoutes: _mapRouteToPageRouteInfo(true),
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
      ),
    );
  }

  List<PageRouteInfo> _mapRouteToPageRouteInfo(bool isAuthed) {
    return [const LoginRoute()];
    // return isAuthed ? const [MainRoute()] : const [LoginRoute()];
  }
}
