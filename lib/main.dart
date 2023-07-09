import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:logger/logger.dart';

import 'app/my_app.dart';
import 'app_bloc_observer.dart';
import 'i18n/strings.g.dart';
import 'init_app.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(_runMyApp, _reportError);
}

Future<void> _runMyApp() async {
  await AppInitializer().init();
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  LocaleSettings.useDeviceLocale();
  Bloc.observer = AppBlocObserver();
  runApp(TranslationProvider(child: const MyApp()));
}

void _reportError(Object error, StackTrace stackTrace) {
  Logger().e('Uncaught exception', error, stackTrace);
}
