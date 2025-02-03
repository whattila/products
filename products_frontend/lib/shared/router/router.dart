import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/dashboard/dashboard.screen.dart';
import '../../features/product_details/product_details.page.dart';
import '../../features/product_list/product_list.page.dart';
import '../../feed.page.dart';
import '../../profile.page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
        path: '/dashboard',
        page: DashboardRoute.page,
        children: [
          AutoRoute(path: 'feed', page: FeedRoute.page),
          AutoRoute(path: 'product_list', page: ProductListRoute.page,),
          AutoRoute(path: 'profile', page: ProfileRoute.page)
        ],
        initial: true
    ),
    AutoRoute(
        path: '/product_details',
        page: ProductDetailsRoute.page
    ),
  ];
}