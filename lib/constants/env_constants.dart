import 'package:base_project/resource/generated/assets.gen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvConstants {
  static const envKey = 'ENV';
  static String baseApiUrl = '';
  static String apiNameSpace = '';
  static String iamEndPoint = '';

  static Future<void> loadEnvironment() async {
    await dotenv.load(fileName: _fileName());

    baseApiUrl = dotenv.get('BASE_API_URL');
    apiNameSpace = dotenv.get('API_NAME_SPACE');
    iamEndPoint = dotenv.get('IAM_END_POINT');
  }

  static String _fileName() {
    const env = String.fromEnvironment(envKey, defaultValue: 'develop');

    switch (env) {
      case 'staging':
        return Assets.env.envStaging;
      default:
        return Assets.env.envDevelopment;
    }
  }
}
