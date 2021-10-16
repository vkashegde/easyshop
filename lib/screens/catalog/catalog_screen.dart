import 'package:easy_shop/models/models.dart';
import 'package:easy_shop/widgets/custom_appbar.dart';
import 'package:easy_shop/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => CatalogScreen(category: category));
  }

  final Category category;
  CatalogScreen({required this.category});
  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(title: 'Catalog'),
      bottomNavigationBar: CustomNavBar(),
      body: GridView.builder(
          itemCount: categoryProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.15),
          itemBuilder: (BuildContext conttext, int index) {
            return Center(
              child: ProductCard(
                product: categoryProducts[index],
                widthFactor: 2.2,
              ),
            );
          }),
    );
  }
}
