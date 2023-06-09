import 'package:flutter/material.dart';
import 'package:shoppingcart/router/app_routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.of(context).pushReplacementNamed(AppRoutes.home);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/cart.png',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            const Text('@ 2023, QSoft. All rights reserved.'),
          ],
        ),
      ),
    );
  }
}
