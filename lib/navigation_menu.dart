import 'package:ecommerce/pages/cart_screen.dart';
import 'package:ecommerce/pages/favourite_screen.dart';
import 'package:ecommerce/pages/home_screen.dart';
import 'package:ecommerce/pages/profile_screen.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: DColors.tertiary,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shopping_bag),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.save_2),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.search_normal),
              label: '',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    HomeScreen(),
    const CartScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ];
}
