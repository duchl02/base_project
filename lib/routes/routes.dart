import 'package:auto_route/auto_route.dart';

import '../screen/Auth/login_screen.dart';
// import '../screen/main/main_screen.dart';

part 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: LoginRoute.page,
            initial: true,
            children: [AutoRoute(page: LoginRoute.page, path: '')]),
      ];
}
