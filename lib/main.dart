import 'dart:async';

import 'package:base_project/i18n/strings.g.dart';
import 'package:base_project/init_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:logger/logger.dart';

import 'app/my_app.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  LocaleSettings.useDeviceLocale();
  await AppInitializer().init();
  await runZonedGuarded(_runMyApp, _reportError);
}

Future<void> _runMyApp() async {
  runApp(TranslationProvider(child: const MyApp()));
}

void _reportError(Object error, StackTrace stackTrace) {
  Logger().e('Uncaught exception', error, stackTrace);
}
