import 'package:ecommerce/common/widgets/product_item.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ecommerce/common/widgets/search_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> imagePaths = [
    'assets/logo/nike.png',
    'assets/logo/adidas.png',
    'assets/logo/puma.png',
    'assets/logo/underAmour.png',
    'assets/logo/newBalance.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: TSizes.defaultSpace),
            DSearchContainer(),
            const SizedBox(height: TSizes.defaultSpace),
            SizedBox(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: imagePaths.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 50,
                          padding: const EdgeInsets.all(TSizes.sm),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Image.asset(
                            imagePaths[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: TSizes.defaultSpace),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Iconsax.filter5),
              ],
            ),
            const SizedBox(height: TSizes.defaultSpace),
            Expanded(
              child: _buildProductList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductList() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('Products').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        final products = snapshot.data?.docs ?? [];
        if (products.isEmpty) {
          return Center(child: Text('No products found.'));
        }
        return ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return ProductItem(
              name: product['name'],
              price: '\$${product['price'].toString()}',
              imagePath: product['imagePath'],
            );
          },
        );
      },
    );
  }
}
