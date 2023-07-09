import '../di/di.dart' as di;
import 'core/constants/env_constants.dart';

class AppInitializer {
  Future<void> init() async {
    await EnvConstants.loadEnvironment();
    await initDependency();
  }

  Future<void> initDependency() async {
    await di.configureInjection();
  }
}
