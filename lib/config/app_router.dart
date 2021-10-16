import 'package:easy_shop/models/models.dart';
import 'package:easy_shop/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('THis is route : ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: 'error'),
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('error'),
              ),
            ));
  }
}
