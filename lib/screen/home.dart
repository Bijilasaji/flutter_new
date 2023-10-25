import 'package:ecommerce/model/product.dart';
import 'package:ecommerce/model/productcard.dart';
import 'package:ecommerce/screen/cart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.6),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(data: products[index]);
            })

        // ProductCard(data: products[0]),
        );
  }
}
