import 'package:base_project/resource/styles/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../di/di.dart';
import '../i18n/strings.g.dart';
import '../resource/app_setting/app_setting.dart';
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
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(AppSettings.designWidth, AppSettings.designHeight),
      builder: (context, _) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => appBloc,
          ),
        ],
        child: BlocBuilder<AppBloc, AppState>(
          builder: (context, appState) {
            return MaterialApp.router(
              title: context.t.core.home,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode:
                  appState.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
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
            );
          },
        ),
      ),
    );
  }
}
