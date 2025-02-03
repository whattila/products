import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:products_frontend/features/product_list/product_list_page.dart';
import 'package:products_frontend/shared/consts/global_key.dart';

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
    //final router = ref.watch(routerProvider); // ref használata az állapotból

    return MaterialApp(
      // title of the application
      title: 'Hello World Demo Application',
      // theme of the widget
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      // Inner UI of the application
      home: const ProductListPage(),
    );
  }
}
