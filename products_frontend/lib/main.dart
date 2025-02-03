import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:products_frontend/features/product_list/product_list.page.dart';
import 'package:products_frontend/shared/consts/global_key.dart';
import 'package:products_frontend/shared/router/router.provider.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: ProductsApp(),
    ),
  );
}

class ProductsApp extends ConsumerWidget {
  const ProductsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider); // ref használata az állapotból

    return MaterialApp.router(
      scaffoldMessengerKey: globalKey,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
      ),
      key: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Products',
      routerDelegate: AutoRouterDelegate(router, navigatorObservers: () => [AutoRouteObserver()]),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
