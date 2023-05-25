import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingcart/blocs/cart/cart_bloc.dart';
import 'package:shoppingcart/blocs/home/home_bloc.dart';
import 'package:shoppingcart/repositories/cart/cart_category.dart';
import 'package:shoppingcart/repositories/home/home_repository.dart';
import 'package:shoppingcart/router/app_router.dart';
import 'package:shoppingcart/router/app_routes.dart';
import 'package:shoppingcart/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => HomeBloc(
            homeRepository: HomeRepository(),
          )..add(const HomeEvent.loading()),
        ),
        BlocProvider(
          create: (_) => CartBloc(
            cartRepository: CartRepository(),
          )..add(const CartEvent.loading()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Navigator(
          initialRoute: AppRoutes.splash,
          onGenerateRoute: AppRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
