import '../di/di.dart' as di;

class AppInitializer {
  Future<void> init() async {
    await di.configureInjection();
  }
}
