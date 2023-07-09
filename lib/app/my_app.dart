import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../di/di.dart';
import '../i18n/strings.g.dart';
import '../routes/app_routes_observers.dart';
import '../routes/routes.dart';
import 'bloc/app_bloc.dart';

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
        routerConfig: appRouter.config(
          navigatorObservers: () => [AppRouteObserver()],
        ),
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
}
