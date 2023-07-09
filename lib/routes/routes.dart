import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'routes.gr.dart';

@lazySingleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: MainRoute.page, initial: true)
      ];
}
