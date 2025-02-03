import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavbarTabs {
  final PageRouteInfo<dynamic> route;
  final BottomNavigationBarItem bottomNavigationBarItem;

  NavbarTabs({required this.route, required this.bottomNavigationBarItem});
}

final List<NavbarTabs> navbarTabs = [
  NavbarTabs(
    route: const FeedRoute(),
    bottomNavigationBarItem: const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Feed'),
  ),
  NavbarTabs(
      route: const ProductsRoute(),
      bottomNavigationBarItem: const BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Products')
  ),
  NavbarTabs(
      route: const ProfileRoute(),
      bottomNavigationBarItem: const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
  )
];