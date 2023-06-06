import 'package:base_project/routes/routes.dart';

import '../di/di.dart' as di;
import 'constants/env_constants.dart';

class AppInitializer {
  Future<void> init() async {
    await EnvConstants.loadEnvironment();
    await initDependency();
  }

  Future<void> initDependency() async {
    await di.configureInjection();
    di.getIt.registerSingleton(AppRouter());
  }
}
