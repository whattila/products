import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/product_details/product_details.page.dart';
import '../../features/product_list/product_list.page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
        path: '/product_list',
        page: ProductListRoute.page,
        initial: true
    ),
    AutoRoute(
        path: '/product_details',
        page: ProductDetailsRoute.page
    ),
  ];
}