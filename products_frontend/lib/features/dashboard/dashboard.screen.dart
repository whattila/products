import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/navbar_tabs/navbar_tabs.dart';

@RoutePage()
class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  Widget _body(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        AutoTabsScaffold(
          resizeToAvoidBottomInset: false, //new line
          routes: navbarTabs.map((tab) => tab.route).toList(),
          backgroundColor: Colors.white,
          bottomNavigationBuilder: (context, tabsRouter) {
            return BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (int index) {
                tabsRouter.setActiveIndex(index);
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.indigo,
              unselectedItemColor: Colors.black,
              items: navbarTabs.map((tab) => tab.bottomNavigationBarItem).toList(),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _body(context, ref);
  }
}