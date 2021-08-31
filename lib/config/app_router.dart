import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/models/models.dart';
import 'package:shop/screens/cart/cart_screen.dart';
import 'package:shop/screens/catalog/catalog_screen.dart';
import 'package:shop/screens/home/home_screen.dart';
import 'package:shop/screens/profile/profile_screen.dart';
import 'package:shop/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProfileScreen.routeName:
        return ProfileScreen.route();
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
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('Error'),
              ),
            ));
  }
}
