import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';
import 'routes.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: NoNameRoute.page,
      path: Routes.NoNamePage,
    ),
    AutoRoute(
      page: HomeRoute.page,
      path: Routes.HomePage,
    ),
    AutoRoute(
      page: StatisticsRoute.page,
      path: Routes.StatisticsPage,
    ),
    AutoRoute(
      page: ChatRoute.page,
      path: Routes.ChatPage,
    ),
    AutoRoute(
      page: ProfileRoute.page,
      path: Routes.ProfilePage,
    ),
  ];
}
