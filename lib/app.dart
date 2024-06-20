import 'package:ecommerce/pages/product_details_screen.dart';
import 'package:ecommerce/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      getPages: [
        GetPage(name: '/productDetails', page: () => ProductDetailsScreen())
      ],
    );
  }
}
