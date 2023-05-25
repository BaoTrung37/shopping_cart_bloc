import 'package:flutter/material.dart';
import 'package:shoppingcart/router/app_routes.dart';
import 'package:shoppingcart/presentation/views/home/home_view.dart';
import 'package:shoppingcart/presentation/views/shopping_cart/shopping_cart_view.dart';
import 'package:shoppingcart/presentation/views/splash/splash_view.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const SplashView(),
        );
      case AppRoutes.home:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const HomeView(),
        );
      case AppRoutes.shoppingCart:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const ShoppingCartView(),
        );
      default:
        return null;
    }
  }
}
