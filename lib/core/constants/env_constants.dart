import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../resource/generated/assets.gen.dart';


class EnvConstants {
  static const envKey = 'ENV';
  static String baseApiUrl = '';

  static Future<void> loadEnvironment() async {
    await dotenv.load(fileName: _fileName());

    baseApiUrl = dotenv.get('BASE_API_URL');
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
