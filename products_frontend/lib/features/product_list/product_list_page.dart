import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:products_frontend/shared/repositories/products/products_client.provider.dart';
import '../../../../shared/dio/dio_error_handler.dart';
import '../../shared/repositories/products/products_client.dart';
import '../../shared/widgets/snack.dart';

class ProductListPage extends ConsumerStatefulWidget {
  const ProductListPage({super.key});

  @override
  ConsumerState<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends ConsumerState<ProductListPage> {
  final _pageSize = 6;
  final PagingController<int, dynamic> _pagingController = PagingController(firstPageKey: 1);
  late final ProductsClient api;

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    api = ref.read(
      productsClientProvider(
        onError: (e, handler) {
          Snack.showWithoutContext(text: DioErrorHandler.getErrorMessage(e));
        },
      ),
    );
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      // get next page of products
      final response = await api.getAllProducts(paginationDto: {'limit': _pageSize, 'offset': (pageKey - 1) * _pageSize});
      // Check if it is last page
      final isLastPage = response.nextPage == null;
      // If it is last page then append last page else append new page
      if (isLastPage) {
        _pagingController.appendLastPage(response.data);
      } else {
        // Appending new page when it is not last page
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(response.data, nextPageKey);
      }
    }
    // Handle error in catch
    catch (error) {
      print(_pagingController.error);
      // Sets the error in controller
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) =>
      // Refrsh Indicator pull down
      RefreshIndicator(
        onRefresh: () => Future.sync(
          // Refresh through page controllers
              () => _pagingController.refresh(),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Pagination Scroll Flutter Template"),
          ),
          // Page Listview with divider as a separation
          body: PagedListView<int, dynamic>.separated(
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate<dynamic>(
              animateTransitions: true,
              itemBuilder: (_, item, index) => const ListTile(
                title: Text('Product'),
              ),
            ),
            separatorBuilder: (_, index) => const Divider(),
          ),
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}