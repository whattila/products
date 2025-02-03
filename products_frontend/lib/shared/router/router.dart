import 'package:auto_route/auto_route.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
        path: '/dashboard',
        page: DashboardRoute.page,
        children: [
          AutoRoute(path: 'feed', page: FeedRoute.page),
          AutoRoute(path: 'products', page: ProductsRoute.page),
          AutoRoute(path: 'profile', page: ProfileRoute.page)
        ]
    ),
    AutoRoute(
        path: '/product_details',
        page: ProductDetailsRoute.page
    ),
  ];
}