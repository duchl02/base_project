import 'package:base_project/routes/routes.dart';

import '../di/di.dart' as di;

class AppInitializer {
  Future<void> init() async {
    await initDependency();
  }

  Future<void> initDependency() async {
    await di.configureInjection();
    di.getIt.registerSingleton(AppRouter());
  }
}
